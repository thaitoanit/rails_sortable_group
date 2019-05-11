class SortableController < ApplicationController
  #
  # post /sortable/reorder, rails_sortable: [{ klass: "Item", id: "3" }, { klass: "Item", id: "2" }, { klass: "Item", id: "1" }]
  #
  def reorder
    ActiveRecord::Base.transaction do
      index_sort = 0
      params['rails_sortable'].each_with_index do |klass_to_id, new_sort|
        if klass_to_id.to_s != '{"klass"=>""}'
          index_sort = index_sort + 1
          model = find_model(klass_to_id)
          current_sort = model.read_attribute(model.class.sort_attribute)
          model.update_sort!(index_sort) if current_sort != index_sort
        else
          puts '========> this error'
        end
      end
    end

    head :ok
  end

private

  def find_model(klass_to_id)
    klass, id = klass_to_id.values_at('klass', 'id')
    klass.constantize.find(id.to_i)
  end
end

class AddVisitIdToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :visit_id, :integer
  end
end

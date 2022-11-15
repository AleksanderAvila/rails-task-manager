class Task < ApplicationRecord
  def create_task
    create_table :Task do |t|
      t.string :title
      t.text :details
      t.boolean :completed, as: false
    end
  end
end

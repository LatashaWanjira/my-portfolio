class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.column :skill_name, :string
      t.column :skill_ability, :string

      t.timestamps
    end
  end
end

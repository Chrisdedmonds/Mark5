class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.string :name
      t.string :year
      t.references :company
      t.timestamps
    end
  end
end

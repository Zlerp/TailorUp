class AddCompanyToTailors < ActiveRecord::Migration
  def change
    add_reference :tailors, :company, index: true, foreign_key: true
  end
end

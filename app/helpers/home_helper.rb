module HomeHelper
  
  def skeda_for_form_type(filing)
    if filing.form_type == 'F3'
      'sa'
    end
  end
  
  def skedb_for_form_type(filing)
    if filing.form_type == 'F3'
      'sb'
    elsif filing.form_type == 'F24'
      'se'
    end
  end
  
  def display_donor(item)
    if item[:contributor_last_name]
      "#{item[:contributor_last_name]}, #{item[:contributor_first_name]} #{item[:contributor_middle_name]}"
    else
      item[:contributor_organization_name]
    end
  end
  
  def display_payee(item)
    if item[:payee_last_name]
      "#{item[:payee_last_name]}, #{item[:payee_first_name]} #{item[:payee_middle_name]}"
    else
      item[:payee_organization_name]
    end
  end
  
  def display_date(date)
    begin
      Date.parse(date)
    rescue
      date
    end
  end
  
end

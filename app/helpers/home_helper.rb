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
  
end

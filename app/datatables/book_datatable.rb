class BookDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    @view_columns ||= {
      id:         { source: "Book.id" },
      title: { source: "Book.title" },
    }
  end

  def data
    records.map do |record|
      {
        id:         record.id,
        title: record.title,
        DT_RowId:   record.id, # This will automagically set the id attribute on the corresponding <tr> in the datatable
      }
    end
  end

  def get_raw_records
    Book.all
  end

end

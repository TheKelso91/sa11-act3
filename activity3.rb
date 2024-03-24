def extract_urls(text)
    pattern = /(?:https?|ftp):\/\/[\w\-]+(?:\.[\w\-]+)*(?:\/[\w\-\.\/?%&=]*)?/
    urls = text.scan(pattern)
    urls.each { |url| puts url }
end
  
sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."
extract_urls(sample_text)


def parse_invoices(invoice_data)
    invoice_data.each_line do |line|
        match_data = line.match(/(\d{4}-\d{2}-\d{2}) - (\w+) - ([\w\s]+) - (\$\d+)/)
        date, invoice_number, client_name, amount = match_data.captures
        puts "Date: #{date}, Invoice Number: #{invoice_number}, Client: #{client_name}, Amount: #{amount}"
    end
end
  
invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES
puts('')
parse_invoices(invoice_entries)

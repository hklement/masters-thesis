GENERATED_LABEL_REGEXP = /\\label{[\w\d\.-]+}/
NON_SENTENCE_ENDING_PERIOD_REGEXP = /\.~/
REFERENCE_REGEXP = / (\\(cite|ref)\{.+?\})/

`mkdir -p /tmp/thesis`
`rm -rf tex`
`mkdir -p tex`

Dir.entries('markdown').select { |filename| filename =~ /\d+\w+\.md/ }.each do |filename|
  File.open("markdown/#{filename}", 'r') do |input_file|
    File.open("/tmp/thesis/#{filename}", 'w') do |output_file|
      output_file.write(input_file.read)
    end
  end

  `pandoc /tmp/thesis/#{filename} --chapters --no-wrap -o /tmp/thesis/#{filename.gsub('.md', '.tex')}`

  File.open("/tmp/thesis/#{filename.gsub('.md', '.tex')}", 'r') do |input_file|
    File.open("tex/#{filename.gsub('.md', '.tex')}", 'w') do |output_file|
      content = input_file.read
      content.gsub!(GENERATED_LABEL_REGEXP, '')
      content.gsub!(NON_SENTENCE_ENDING_PERIOD_REGEXP, '.\ ')
      content.gsub!(REFERENCE_REGEXP) { "~#{$1}" }
      output_file.write(content)
    end
  end
end

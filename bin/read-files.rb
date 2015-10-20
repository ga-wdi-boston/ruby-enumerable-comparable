# script processing two files

line_count = 0

File.open(ARGV[0]) do |file_one|
  File.open(ARGV[1]) do |file_two|
    file_two_enumerator = file_two.each
    file_one.each_with_index do |file_line, index|
      begin
        enum_line = file_two_enumerator.next.chomp unless file_two_enumerator.nil?
        file_line = file_line.chomp
      rescue StopIteration => e
        puts "Ran out of file_two before file_one at line #{index}: #{e}"
        file_two_enumerator = nil
      end
      line_count = index
    end
  end
end

p line_count

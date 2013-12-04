require 'debugger'

class Array

  REGEX = /.*\-(?<first>\d+)?\.?(?<second>\w+)?\.?(?<third>\w+)?\.[a-z]+/


  # REGEX = /\-(\d+)?\.?(\w+)?\.?(\w+)?\.[a-z]+/

  def version_sort
    matched = []
    array_of_matched = []
    final_array = []
    self.each do |file|
      matched << REGEX.match(file)
    end

    matched.each do |match|
      array_of_matched << [match[0], match[:first].to_i, match[:second].to_i, match[:third].to_i]
    end 

    array_of_awesome = array_of_matched.sort

    # array_of_awesome = array_of_matched.sort do |a,b|
    #   if (a[1] <=> b[1]) == 0
    #     if (a[2] <=> b[2]) == 0
    #       a[3] <=> b[3]
    #     else
    #       a[2] <=> b[2]
    #     end
    #   else
    #     a[1] <=> b[1]
    #   end
    # end

    array_of_awesome.each do |array|
      final_array << array[0]
    end 

    final_array
   
    debugger
     puts "hello"
  end
end 


filenames = [
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.3.ext",
  "foo-1.50.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.ext",
  "foo-10.1.ext",
  "foo-10.ext",
  "foo-100.ext",
  "foo-13.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.0.ext",
  "foo-2.007.ext",
  "foo-2.01.ext",
  "foo-2.012b.ext",
  "foo-2.01a.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.1.ext",
  "foo-25.ext",
  "foo-6.ext",
]
version_sorted_filenames = [
  "foo-1.ext",
  "foo-1.3.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.50.ext",
  "foo-2.0.ext",
  "3",
  "foo-2.0b.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.01.ext",
  "foo-2.1.ext",
  "foo-2.01a.ext",
  "foo-2.007.ext",
  "foo-2.012b.ext",
  "foo-6.ext",
  "foo-10.ext",
  "foo-10.1.ext",
  "foo-13.ext",
  "foo-25.ext",
  "foo-100.ext",
]

filenames.version_sort

#issues: letters & 007 

#filenames.sort.regex_sort

# filenames.version_sort.should eq(version_sorted_filenames)

# # foo-1.10.2.ext
# file = file.gsub(".ext", "")
# # foo-1.10.2
# file_ext = file.split[-]
# # [foo] [1.10.2] 
# #want: to remove the second period 
# file_num = file[1]
#files_sort = /\d+/.match(file)
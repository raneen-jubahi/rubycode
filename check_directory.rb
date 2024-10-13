require 'fileutils'

# تحديد المسار المطلق لمجلد csv-viewer
source = '/home/raneen_jubahi/csv_viewer'
# تحديد المسار المطلق لمجلد rubycode
destination = '/home/raneen_jubahi/gsg/rubycode'
# نقل جميع الملفات من csv-viewer إلى rubycode
FileUtils.mv(Dir.glob("#{source}/*"), destination)

puts "تم نقل جميع الملفات بنجاح!"



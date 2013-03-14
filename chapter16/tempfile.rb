require 'tempfile'

p ENV['TMPDIR']
p ENV['TMP']
p ENV['TEMP']

tf = Tempfile.new("hoge")
tf.close
tf.open
tf.close
p tf.path


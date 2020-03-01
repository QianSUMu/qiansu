import json
import os
import requests
import urllib3

def catch_BilibiliPic(LocalRoad=" "):
    
    av = input('请输入要查询的AV号:')

    url = 'https://api.bilibili.com/x/web-interface/view?aid=%s' % (av,)
    #url='http://i1.hdslb.com/bfs/archive/a6f50da6a150fe4c569a512f8f0377ec86fc0d5c.jpg'
    headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36',
                'Referer': 'https://www.bilibili.com'}  # 竟然是这里的错误


    urllib3.disable_warnings()  #从urllib3中消除警告
    # 屏蔽warning信息，因为下面verify=False会报警告信息
    
    response = requests.get(url, headers=headers, verify=False)  #证书验证设为FALSE
    content = json.loads(response.text)
    # 获取到的是str字符串 需要解析成json数据
    statue_code = content.get('code') #json数据中的data中的pic就是图片的地址 用get函数返回字符串 赋值给urljpg 
    print('已经找到封面...\n正在下载...')
    try: 
        urljpg=content.get('data').get('pic')
        r = requests.get(urljpg, headers=headers, stream=True)
        with open(LocalRoad+"\\"+av+'.jpg', "wb") as jpg:
            for chunk in r.iter_content(chunk_size=1024 * 1024):#当流下载时，用Response.iter_content或许更方便些。
                if chunk:                                       #requests.get(url)默认是下载在内存中的，下载完成才存到硬盘上，可以用Response.iter_content　来边下载边存硬盘
                    jpg.write(chunk)
    except IndentationError:
        print("缩进错误")
    except SyntaxError:
        print("语法错误")
    except:
        print("不知名错误(‘大概是你的AV号输入错误输入y重新输入AV号’)")
    else:
        print('下载完成...') #会自动回车


'''
这是为了防止将整个响应立即加载到内存中
它还允许您在流式传输响应时实现一些并发性，以便可以在等待请求完成时进行工作。

设置流请求的目的通常是针对媒体。
就像尝试使用请求下载500 MB的.mp4文件一样，
您想要流式传输响应（并将流以块形式写入chunk_size），
而不是等待立即将所有500mb加载到python中。

如果要实现任何UI反馈（例如“下载的<chunk_size>字节...”之类的下载进度），
则需要流式处理和分块处理。如果您的响应包含一个Content-Size标头，
则您也可以计算每个保存的块的完成百分比。
'''
def getBilibili(LoaclRoad):
    catch_BilibiliPic(LoaclRoad)
    while True:
        x=input('是否继续(y/n):')
        if (x== 'y' or x=='Y'):
            catch_BilibiliPic()
        elif (x=='n' or x=='N'):
            break
        else:
            print('让你输入y n 就给我输入成不大哥？')




LoaclRoad=input("输入路径(输入0默认在创建目录Bilibili，在本程序的根目录下存放文件)\n如果不输入0 那么请注意输入路径需要用两个反斜杠\n如果目录不存在会自动创建\n输入:")
if LoaclRoad== "0":
    try:
        os.mkdir("Bilibili")#如果抛出异常 则该文件目录 可能 存在
        LoaclRoad="Bilibili"
    except:
        LoaclRoad='Bilibili'   #处理异常
else:
    try:
        os.mkdir(LoaclRoad)
    except:
        pass

while(os.path.exists(LoaclRoad)==False):
    try:                       #路径错误 可能是没有目录 尝试创建
        os.mkdir(LoaclRoad)   #尝试在输入的路径下创建一个目录 如果目录是存在的抛出异常 但也有可能是其他原因抛出异常
        if os.path.exists(LoaclRoad)==Ture:
            pass
    except:
        LoaclRoad=input("错误路径,重新输入:") #如果目录存在 就没有办法 只能重新输入路径
        
print(LoaclRoad+"\n工作目录准备成功...")
getBilibili(LoaclRoad)
 


# bool loadIniConfig(const char *ini_path)

>   readlink("/proc/self/exe", buffer, sizeof(buffer));
    //获取当前正在运行的可执行文件完整路径的标准方法


>   #define NOTICE_EMIT(types, ...) NoticeHelper<void(types)>::emit(__VA_ARGS__)
    //用于触发/发送通知(notice)的封装宏，结合了模板元编程和可变参数的特性。
这种设计模式常见于事件总线(event bus)、观察者模式等场景，提供了灵活的通知机制。
* NOTICE_EMIT：宏名称
* types：表示参数类型列表
* ...：可变参数，表示实际传递的参数
* __VA_ARGS__：展开宏的可变参数

>   NoticeHelper<void(types)>
这是一个模板类，使用 void(types) 作为模板参数。这里的 void(types) 表示一个函数类型：

* void 是返回类型
* types 是参数类型列表
### 1. **智能指针 (`std::shared_ptr`) 管理资源**

    ```cpp
    std::shared_ptr<std::ostream> stream
    std::shared_ptr<OptionParser> _parser;
    std::shared_ptr<CMD> cmd;
    ```
    
- 避免裸指针手动管理生命周期，防止内存泄漏，非常现代化。
     
特别是 `std::shared_ptr<std::ostream>(&std::cout, [](std::ostream *) {})` 这种**"伪管理" std::cout**的写法，属于高级技巧，防止误删标准输出流。

---

###  **lambda表达式和`std::function`灵活回调**

    
    ```cpp
    using OptionHandler = std::function<bool(const std::shared_ptr<std::ostream> &, const std::string &)>;
    ```

---

### `std::recursive_mutex` 是什么？

`std::recursive_mutex` 是 C++11 标准库里的一个互斥锁（mutex），**允许同一个线程对同一把锁多次加锁**。

它的特点是：

- **同一个线程可以连续多次 lock()，而不会死锁**；
    
- 每次 lock() 都需要对应一次 unlock()；
    
- 内部会维护一个**锁的计数器**和**锁拥有者线程ID**。

普通的 `std::mutex` 不允许同一个线程重复加锁。比如：

```cpp
std::mutex mtx;

void func() {
    mtx.lock();
    mtx.lock();  // 死锁！！同一个线程再次加锁会阻塞自己
}
```
---

###  **完美转发(std::forward)**
- 在 `OptionParser` 的 `operator<<` 中：
    
    ```cpp
    _map_options.emplace(index, std::forward<Option>(option));
    ```
    
    这里用 `std::forward` 保持左值右值特性（支持传入`Option&&`），避免不必要的拷贝，**属于C++11高效编码习惯**。
    完美转发（Perfect Forwarding），其核心目的是在模板函数中保留参数的原始值类别（左值或右值），从而确保参数能够以正确的类型传递到下层函数。

---


```
(lldb) p/x ZZPerson.class
(Class) $0 = 0x00000001000022d0 ZZPerson
(lldb) p (class_data_bits_t *)0x1000022F0
(class_data_bits_t *) $1 = 0x00000001000022f0
(lldb) p $1->data()
(class_rw_t *) $2 = 0x0000000100628a30
(lldb) p *$2
(class_rw_t) $3 = {
  flags = 2148007936
  witness = 0
  ro_or_rw_ext = {
    std::__1::atomic<unsigned long> = 4294975784
  }
  firstSubclass = nil
  nextSiblingClass = NSUUID
}
(lldb) p $3.methods()
(const method_array_t) $4 = {
  list_array_tt<method_t, method_list_t> = {
     = {
      list = 0x0000000100002170
      arrayAndFlag = 4294975856
    }
  }
}
(lldb) p $4.list
(method_list_t *const) $5 = 0x0000000100002170
(lldb) p *$5
(method_list_t) $6 = {
  entsize_list_tt<method_t, method_list_t, 3> = {
    entsizeAndFlags = 26
    count = 4
    first = {
      name = "testInstanceMethod"
      types = 0x0000000100000f5b "v16@0:8"
      imp = 0x0000000100000dd0 (KCObjc`-[ZZPerson testInstanceMethod])
    }
  }
}
(lldb) p $6.get(0)
(method_t) $7 = {
  name = "testInstanceMethod"
  types = 0x0000000100000f5b "v16@0:8"
  imp = 0x0000000100000dd0 (KCObjc`-[ZZPerson testInstanceMethod])
}
(lldb) p $6.get(1)
(method_t) $8 = {
  name = "zz_name"
  types = 0x0000000100000f6f "@16@0:8"
  imp = 0x0000000100000de0 (KCObjc`-[ZZPerson zz_name])
}
(lldb) p $6.get(2)
(method_t) $9 = {
  name = "setZz_name:"
  types = 0x0000000100000f77 "v24@0:8@16"
  imp = 0x0000000100000e10 (KCObjc`-[ZZPerson setZz_name:])
}
(lldb) p $6.get(3)
(method_t) $10 = {
  name = ".cxx_destruct"
  types = 0x0000000100000f5b "v16@0:8"
  imp = 0x0000000100000e40 (KCObjc`-[ZZPerson .cxx_destruct])
}
(lldb) p $6.get(4)
Assertion failed: (i < count), function get, file /Users/zeze/Downloads/20200907-大师班第2天-OC对象中-资料/01--课堂代码/可编译objc源码/runtime/objc-runtime-new.h, line 438.
error: Execution was interrupted, reason: signal SIGABRT.
The process has been returned to the state before expression evaluation.
(lldb) 

```
[图片]()

```
(lldb) p/x ZZPerson.class
(Class) $0 = 0x0000000100002230 ZZPerson
(lldb) p (cache_t *)0x0000000100002240
(cache_t *) $1 = 0x0000000100002240
(lldb) p *$1
(cache_t) $2 = {
  _buckets = {
    std::__1::atomic<bucket_t *> = 0x0000000100719980 {
      _sel = {
        std::__1::atomic<objc_selector *> = ""
      }
      _imp = {
        std::__1::atomic<unsigned long> = 11504
      }
    }
  }
  _mask = {
    std::__1::atomic<unsigned int> = 3
  }
  _flags = 32784
  _occupied = 2
}
(lldb) p $2.buckets()
(bucket_t *) $3 = 0x0000000100719980
(lldb) p *$3
(bucket_t) $4 = {
  _sel = {
    std::__1::atomic<objc_selector *> = ""
  }
  _imp = {
    std::__1::atomic<unsigned long> = 11504
  }
}
(lldb) p $4.sel()
(SEL) $5 = "toDoSomething0"
(lldb) p $4.imp(pClass)
(IMP) $6 = 0x0000000100000ec0 (KCObjc`-[ZZPerson toDoSomething0])
(lldb) p $3 + 1
(bucket_t *) $7 = 0x0000000100719990
(lldb) p *$7
(bucket_t) $8 = {
  _sel = {
    std::__1::atomic<objc_selector *> = ""
  }
  _imp = {
    std::__1::atomic<unsigned long> = 11472
  }
}
(lldb) p $8.sel()
(SEL) $9 = "toDoSayHello"
(lldb) p $8.imp(pClass)
(IMP) $10 = 0x0000000100000ee0 (KCObjc`-[ZZPerson toDoSayHello])
(lldb) 

```



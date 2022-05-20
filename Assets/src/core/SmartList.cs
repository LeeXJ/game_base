using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SmartList<T>
{
    private List<List<T>> datas = new List<List<T>>(1);
    private int size;
    private int used = 0;
    private int capacity;

    public SmartList(int size = 8)
    {
        this.size = size;
        capacity += size;
        datas.Add(new List<T>(size));
    }

    public void Add(T item)
    {
        int data = used / 8;
        datas[data].Add(item);
        used++;
        // 扩容
        if (used >= capacity)
        {
            capacity += size;
            datas.Add(new List<T>(size));
        }
    }

    public T this[int i]
    {
        get
        {
            int data = i / 8;
            int index = i % 8;
            return datas[data][index];
        }
        set
        {
            int data = i / 8;
            int index = i % 8;
            datas[data][index] = value;
        }
    }

    public int Count
    {
        get
        {
            return used;
        }
    }

}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class tutorialSmartList : MonoBehaviour
{
    // Start is called before the first frame update
    async void Start()
    {
        SmartList<int> list = new SmartList<int>();
        list.Add(1);
        list.Add(2);
        list.Add(3);
        list.Add(4);
        list.Add(5);
        list.Add(6);
        list.Add(7);
        list.Add(8);
        list.Add(9);
        for (int i = 0; i < list.Count; ++i)
        {
            Debug.Log(list[i]);
        }
    }

    // Update is called once per frame
    void Update()
    {

    }
}

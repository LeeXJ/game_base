using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutorialDynamicTest
{
    public int a;
    public string b;
    public void test(bool c)
    {
        Debug.Log($"{a}.{b}.{c}");
    }
}
public class TutorialDynamic : MonoBehaviour
{
    // Start is called before the first frame update
    async void Start()
    {
        var type = System.Type.GetType("TutorialDynamicTest");
        dynamic t = System.Activator.CreateInstance(type);
        t.a = 1;
        t.b = "test";
        t.test(true);
    }

    // Update is called once per frame
    void Update()
    {

    }
}

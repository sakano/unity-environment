using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Calculator
{
    public static int Add(int x, int y)
    {
        return x + y;
    }

    public static int Subtract(int x, int y)
    {
        return x - y;
    }

    public static int IsNotNull(int? x)
    {
        if (x is null)
        {
            throw new ArgumentNullException(nameof(x));
        }

        return x.Value;
    }
}

using NUnit.Framework;

public class CalculatorTest
{
    [Test]
    public void AddTest()
    {
        var result = Calculator.Add(1, 2);
        Assert.AreEqual(3, result);
    }
}

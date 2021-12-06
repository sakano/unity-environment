using NUnit.Framework;

public class NewTestScript
{
    [Test]
    public void IsNotNullTest()
    {
        var result = Calculator.IsNotNull(1);
        Assert.AreEqual(1, result);
    }
}

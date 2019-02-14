import XCTest
import composition

private func f1(_ i: Int32) -> Double
{
  return Double(i)
}

private func f2(_ d: Double) -> String
{
  return String(d)
}

class compositionTests: XCTestCase
{
    func testExample()
    {
      let s = 1 • f1 • f2
      XCTAssertEqual(s, "1.0")
      XCTAssertEqual(s, f2(f1(1)))
    }
}

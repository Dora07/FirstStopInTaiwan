import UIKit

class SecondViewController: UIViewController {
    //活動文字
    @IBOutlet weak var Activity: UILabel!
    //活動照片
    @IBOutlet weak var ActivityImge: UIImageView!
    //日期文字
    @IBOutlet weak var DayLabel: UILabel!
    //日期轉盤
    @IBOutlet weak var YearDatePicker: UIDatePicker!
    //閏年判斷
    @IBOutlet weak var LeapYear: UISegmentedControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
   DateFun()
     
    }
    //設定func來套用
    func DateFun()
    {
        let dateFormatter = DateFormatter()
        //日期文字樣式
        dateFormatter.dateStyle = .full
        //日期地區
       dateFormatter.locale = Locale(identifier: "zh_TW")
    
        let date = YearDatePicker.date
        let dateString = dateFormatter.string(from: date)
        DayLabel.text = "今天是" + dateString
    
        //設定日期區間顯示活動內容及照片顯示
        let dateCompents = Calendar.current.dateComponents(in: TimeZone.current, from: date)
        let month = dateCompents.month!
      
        if month == 1
        {
            
            Activity.text = "桃園燈會"
            ActivityImge.image = UIImage(named: "01")
        }
        else if month == 2
        {
            Activity.text = "春日賞花季"
            ActivityImge.image = UIImage(named: "02")
        }
        else if month == 3
        {
            Activity.text = "大溪豆干節"
            ActivityImge.image = UIImage(named: "03")
            
        }
        else if month == 4
        {
            Activity.text = "龍岡米干節"
            ActivityImge.image = UIImage(named: "04")
            
        }
        else if month == 5
        {
            Activity.text = "客家桐花季"
            ActivityImge.image = UIImage(named: "05")
        }
      else if month == 6
      {
        Activity.text = "划龍舟慶端午"
        ActivityImge.image = UIImage(named: "06")
      }
      else if month == 7
      {
        Activity.text = "石門水庫熱氣球嘉年華"
        ActivityImge.image = UIImage(named: "07")
      }
        else if month == 8
        {
            Activity.text = "大溪文藝季"
            ActivityImge.image = UIImage(named: "08")
        }
        else if month == 9
        {
            Activity.text = "桃園地景藝術節"
            ActivityImge.image = UIImage(named: "09")
        }
        else if month == 10
        {
            Activity.text = "桃園蓮花季"
            ActivityImge.image = UIImage(named: "10")
        }
        else if month == 11
        {
            Activity.text = "桃園購物節"
            ActivityImge.image = UIImage(named: "11")
        
        }
        else if month == 12
        {
            Activity.text = "跨年晚會"
            ActivityImge.image = UIImage (named: "12")
        }
        
        //判斷閏年
        let year = dateCompents.year!
        //被4整除且不被100整除或被400整除為閏年
        if year % 4 == 0, year % 100 != 0 ||  year % 400 == 0
        {
            LeapYear.selectedSegmentIndex = 0
        }
        
        else
        {
            LeapYear.selectedSegmentIndex = 1
        }
    }

    
        
        
    @IBAction func DatePickerAction(_ sender: UIDatePicker)
    {
        DateFun()
    }
    
    

}

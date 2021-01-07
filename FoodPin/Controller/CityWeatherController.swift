//
//  CityWeatherController.swift
//  WeatherForecast
//
//  Created by 楊智崴 on 2021/1/7.
//

import UIKit

class CityWeatherController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    var cities = [
    (eName:"Taipei",cName:"臺北市")
    ]
    
    private let API_URL = "https://api.openweathermap.org/data/2.5/weather?"
    private let ICON_URL = "https://openweathermap.org/img/wn/"
    private let API_KEY = "5446cea7c0e250b85d9b6a663da609a9"
    
    @IBOutlet var cityName: UILabel!
    @IBOutlet var weatherState: UILabel!
    @IBOutlet var weatherIcon: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getForecast(location: "Taipei")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "datacell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = cities[indexPath.row].cName
        cell.detailTextLabel?.text = cities[indexPath.row].eName
        

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        getForecast(location: cities[indexPath.row].eName)
    }
    
    func getForecast(location: String) {
        
        guard let accessURL = URL(string: API_URL + "q=\(location)&units=metric&lang=zh_tw&appid=\(API_KEY)") else {
            return
        }
        
        let request = URLRequest(url: accessURL)
        let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
            if let error = error {
                print(error)
                return
            }
            //parse data
            if let data = data {
                let decoder = JSONDecoder()
                if let weatherData = try? decoder.decode(WeatherForecastData.self, from: data) {
                    //download weahter icon
                    self.getImage(weatherCode: weatherData.weather[0].icon)
                    OperationQueue.main.addOperation {
                        self.cityName.text = weatherData.name
                        self.weatherState.text = weatherData.weather[0].description
                    }
                }
            }
        })
        
        task.resume()
    }
    
    
    func getImage(weatherCode: String) {
        
        guard let accessURL = URL(string: ICON_URL + "\(weatherCode)@2x.png") else {
            return
        }
        
        let request = URLRequest(url: accessURL)
        let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
            if let error = error {
                print(error)
                return
            }
            //parse data
            if let data = data, let image = UIImage(data: data) {
                OperationQueue.main.addOperation {
                    self.weatherIcon.image = image
                }
            }
        })
        
        task.resume()
    }
    
     
}

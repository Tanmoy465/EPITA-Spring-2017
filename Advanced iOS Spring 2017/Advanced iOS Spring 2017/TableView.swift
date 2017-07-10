//
//  TableView.swift
//  Advanced iOS Spring 2017
//
//  Created by GeustUser on 5/17/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class TableView: UITableViewController {

 var weatherArray = [Weather]()
  
  @IBAction func unwindToWeatherList(sender: UIStoryboardSegue){
    if let sourceViewController = sender.source as? AddCityController , let weather = sourceViewController.weather {
      let newIndexPath = IndexPath(row: weatherArray.count, section: 0)
      weatherArray.append(weather)
      tableView.insertRows(at: [newIndexPath], with: .automatic)
    }
  }
    
    
    
    
    
    //Code to read json file
    
    
    func readJSONObject(object: [String: AnyObject]) -> String{
        
            let main = object["main"] as? [String: AnyObject]
        
        
        
        let temp = main?["temp"] as? String
            
        
          return temp!
            
       
        
    }

    
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        //code to call live data on console
        
        
        let weather = WeatherFetch()
        weather.getWeather(city: "paris")
        
      // let ParisTemp = readJSONObject(object: weather) as? String
        
        
        
        
        
       
      
      weatherArray.append(Weather(city: "Kolkata", temperature: 37, picture: UIImage(named:"Kolkata"))!)
      weatherArray.append(Weather(city: "Paris", temperature: 10, picture: UIImage(named:"Paris"))!)
      weatherArray.append(Weather(city: "Lokhandwala", temperature: 32, picture:
          UIImage(named:"Pune"))!)
      weatherArray.append(Weather(city: "Bejing", temperature: 28, picture: UIImage(named:"Bejing"))!)
      weatherArray.append(Weather(city: "Howrah", temperature: 17, picture: UIImage(named:"Howrah"))!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows
        return weatherArray.count
    }

  
    // Reusage of cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherTableViewCell", for: indexPath) as?
      WeatherTableViewCell else {
        fatalError("error")
      }

        // Configure the cell...
        cell.cityLabel.text = weatherArray[indexPath.row].city
        cell.tempLabel.text = "\(weatherArray[indexPath.row].temperature)"
        cell.imageContainer.image = weatherArray[indexPath.row].picture
        return cell
    }
 
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if (segue.identifier == "GoToDetailedView") {
            
            // Get the new view controller using segue.destinationViewController.
            // initialize new view controller and cast it as your view controller
            let vc = segue.destination as! WeatherViewController
            
            // Get index of selected cell row
            let index = tableView.indexPathForSelectedRow?.row
            
            // pass the selected weather object to view
            vc.weath = weatherArray[index!]

        }
    }
}

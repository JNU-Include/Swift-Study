let country = "South Korea"
let province = "Jejudo"
let city = "Jeju"
let street = "Shinsan"
let streetNumber = 1

//Concatenation '+'
let address = country + ", " + province + ", " + city
print(address)

//String Interpolation
let interpolatedAddress = "\(country), \(province), \(city)"
print(interpolatedAddress)
let interpolatedStreetAddress = "\(streetNumber) \(street)"

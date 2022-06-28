import 'package:algoriza1/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/1.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome To Fashion Dially ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Help',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon((Icons.add_card_sharp),
                                color: Colors.blueAccent),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      //controller: userInput,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,

                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),//EMAIL
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CountryPickerDropdown(
                          initialValue: 'EG',
                          itemBuilder: _buildDropdownItem,
                          priorityList: [
                            CountryPickerUtils.getCountryByIsoCode('GB'),
                            CountryPickerUtils.getCountryByIsoCode('CN'),
                          ],
                          sortComparator: (Country a, Country b) =>
                              a.isoCode.compareTo(b.isoCode),
                          onValuePicked: (Country country) {
                            print("${country.name}");
                          },
                        ),


                      ],
                    ),//PHONE
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      //controller: userInput,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,

                      ),
                      decoration: InputDecoration(border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),),
                    ),//PASSWORD
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.teal,
                      ),
                      padding:
                      EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => LoginScreen()));
                        },
                        child: Text('Log In'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Or'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      padding:
                      EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => LoginScreen()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.blue)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon((Icons.add_card_sharp),
                                color: Colors.blueAccent),
                            Text('Sign In With Google', style: TextStyle(
                                color: Colors.blue
                            ),),
                          ],
                        ),


                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ' Hase Any Account?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>  LoginScreen()));
                            },
                            child: Text(
                              'Sign In here',
                              style: TextStyle(
                                color: Colors.blueAccent,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Hassan Sharaf El-Din Abdel-Hadi, a graduate of the Faculty of Computers and Information,',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey
                        ),),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildDropdownItem(Country country) => Container(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(
          width: 8.0,
        ),
        Text("+${country.phoneCode}(${country.isoCode})"),
      ],
    ),
  );

}
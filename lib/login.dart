import 'package:flutter/material.dart';


class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _topwidget(),
            Flexible(child: Container(), flex: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _centerwidget(),
            ),
            Flexible(
              child: Container(), flex: 5,),
            const Divider(thickness: 1,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: _bottomwidget(),
            ),
          ],
        ),
      ),
    );
  }


  Widget _topwidget(){
    return DropdownButton(
        value: "English (United States)",

        items:  const [
          DropdownMenuItem(
            child: Text("English (United States)",style: TextStyle(color: Color(0xFFb6b6b6)),),
            value: "English (United States)",

          )
        ],
        onChanged: (v){},);
  }

  Widget _centerwidget(){
    return Column(
      children: [
        Text("Instagram", style: TextStyle(fontFamily: "Insta",fontSize: 60,color: Colors.black),),
      const SizedBox(height: 20,),
      TextField(
        controller: usernameController,
        decoration: InputDecoration(
          hintText: "Phone number, username or email",
          border: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          fillColor: Color(0xFFf7f7f7),
          filled: true,
          contentPadding: const EdgeInsets.all(10)
        ),
      ),
        const SizedBox(height: 20,),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              fillColor: Color(0xFFf7f7f7),
              filled: true,
              contentPadding: EdgeInsets.all(10)
          ),
          obscureText: true,
        ),
        const SizedBox(height: 20,),
        SizedBox(
          height: 48,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: (){
              //Navigator.pushNamed(context, "/home");
            },
            child: const Text("Log In",style: TextStyle(fontSize: 16,color: Colors.white),),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              backgroundColor: Colors.blue
            ),
          ),
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Forget your login details?"),
            Text(" Get help logging in.",
            style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          children: const [
            Flexible(
                child: Divider(thickness: 1,color: Colors.grey,)),
            Text(" OR "),
            Flexible(
                child: Divider(thickness: 1,color: Colors.grey,)),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/fb.png", height: 32,),
            const Text(" Log in with Facebook"),
          ],
        ),
      ],
    );
  }

  Widget _bottomwidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Don't have an account"),
        Text(" Sign up", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent)),
      ],
    );
  }
}

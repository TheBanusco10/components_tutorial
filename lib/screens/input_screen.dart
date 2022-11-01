import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {'username': ''};

    return Scaffold(
      appBar: AppBar(
        title: Text('Input Screen'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) return 'Username cannot be empty';
                  if (value.length <= 3)
                    return 'Username must have more than 3 characters';
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(labelText: 'Username'),
                onChanged: (value) => formValues['username'] = value,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              DropdownButtonFormField(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(
                      child: Text('Admin'),
                      value: 'Admin',
                    ),
                    DropdownMenuItem(
                      child: Text('User'),
                      value: 'User',
                    )
                  ],
                  onChanged: (value) {}),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!formKey.currentState!.validate()) return;
                    print(formValues);
                  },
                  child: const SizedBox(
                    child: Center(child: Text('Save form')),
                    width: double.infinity,
                  ))
            ],
          ),
        ),
      )),
    );
  }
}

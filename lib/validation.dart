class Validation {

  static String validateFirstName(String value){
    if(value.isEmpty){
      return 'First name cannot be empty';
    }
    return null;
  }

  static String validateLastName(String value){
    if(value.isEmpty){
      return 'Last name cannot be empty';
    }
    return null;
  }

  static String validateEmail(String value){
    if(value.isEmpty){
      return 'Email cannot be empty';
    }
    else if(!value.contains('@')){
      return 'Email not valid';
    }
    return null;
  }

  static String validatePassword(String value){
    if(value.isEmpty){
      return 'Password cannot be empty';
    } else if(value.length<4){
      return 'Password must be more than 4 characters';
    }
    return null;
  }
}
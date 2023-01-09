# Emerge Alert Dialog

An emerge alert dialog package is allows developers to easily create and display alert dialogs with custom animations. Emerge dialogs are used to display important information or messages to the user and often include a call to action, such as a button to confirm or dismiss the dialog.

In the context of the Emerge framework, an Alert Dialog is a type of dialog box that can be used to display an alert message or to prompt the user for a response within the context of an Emerge application.


## Usage

[Example](https://github.com/champ96k/emerge_alert_dialog/tree/main/example)

To use this package :

- add the dependency to your pubspec.yaml file.

```yaml
dependencies:

  emerge_alert_dialog: ^0.0.1
```

### How to use

```dart
    Future<void> _showMyDialog(BuildContext context) async {
        return showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
            return EmergeAlertDialog(
            alignment: Alignment.bottomCenter,
            emergeAlertDialogOptions: EmergeAlertDialogOptions(
                title: const Text("Privacy Info"),
             ),
          );
        },
      );
    }
```

### Screenshot


<table>
  <tr>
    <td><img src="https://raw.githubusercontent.com/champ96k/emerge_alert_dialog/main/screenshot/screenshot1.gif"></td>
    <td><img src="https://raw.githubusercontent.com/champ96k/emerge_alert_dialog/main/screenshot/screenshot2.gif"></td>
  </tr>
 </table>

<br>
<br>

 <table>
  <tr>
    <td><img src="https://raw.githubusercontent.com/champ96k/emerge_alert_dialog/main/screenshot/screenshot3.gif"></td>
  </tr>
 </table>


### Created & Maintained By

[Tushar Nikam](https://champ96k.github.io)

<a href="https://www.twitter.com/champ_96k"><img src="https://img.shields.io/badge/twitter-%231DA1F2.svg?&style=for-the-badge&logo=twitter&logoColor=white" height=25> </a>
<br>
<a href="https://www.linkedin.com/in/tushar-nikam-a29a97131/"><img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" height=25></a>

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:oau_padi/shared/theme/app_theme.dart';
import 'package:oau_padi/ui/widgets/custom_sizedbox.dart';

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField(
      {super.key, this.onChanged, this.phoneController, required this.child});

  // Function to handle logic
  final Function(PhoneNumber)? onChanged;

  final Widget child;

  //phone number controller

  final TextEditingController? phoneController;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text('Mobile number'),
      Space.h(10),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child: IntlPhoneField(
            showDropdownIcon: true,
            showCountryFlag: true,
            disableLengthCheck: true,
            controller: phoneController,
            dropdownIconPosition: IconPosition.trailing,
            dropdownDecoration: const BoxDecoration(
                border: Border.symmetric(
                    vertical: BorderSide(color: AppTheme.textColor5))),
            decoration: InputDecoration(
              hintText: 'Enter number',
              hintStyle: const TextStyle(
                  color: AppTheme.textColor5,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppTheme.textColor5),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            initialCountryCode: 'NG',
            onChanged: onChanged),
      )
    ]);
  }
}

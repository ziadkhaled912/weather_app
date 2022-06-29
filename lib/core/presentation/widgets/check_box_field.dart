import 'package:flutter/material.dart';
import 'package:gam3ity/generated/l10n.dart';
import 'package:gam3ity/utilities/theme/light_theme/light_colors.dart';

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField({
    Key? key,
    required BuildContext context,
    required String title,
    String? textButton,
    Function()? onPressed,
    required FormFieldSetter<bool> onSaved,
    bool initialValue = false,
    bool autoValidate = false,
    bool haveButton = false,
  }) : super(
          key: key,
          onSaved: onSaved,
          validator: (val) {
            if (val != null && val) {
              return S.of(context).thisFieldIsRequired;
            }
            return null;
          },
          initialValue: initialValue,
          builder: (FormFieldState<bool> state) {
            return CheckboxListTile(
              dense: state.hasError,
              title: Row(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  if(haveButton)
                  TextButton(
                    onPressed: onPressed,
                    child: Text(
                      textButton!,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              value: state.value,
              onChanged: state.didChange,
              contentPadding: EdgeInsets.zero,
              subtitle: state.hasError
                  ? Builder(
                      builder: (BuildContext context) => Text(
                        state.errorText!,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            ?.copyWith(color: LightColors.errorColor),
                      ),
                    )
                  : null,
            );
          },
        );
}
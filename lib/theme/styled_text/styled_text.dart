import 'package:flutter/material.dart';

class StyledBodyMediumText extends StatelessWidget {
  final String text;

  const StyledBodyMediumText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyMedium);
  }
}

class StyledBodySmallText extends StatelessWidget {
  final String text;

  const StyledBodySmallText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodySmall);
  }
}

class StyledHeadlineMediumText extends StatelessWidget {
  final String text;

  const StyledHeadlineMediumText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineMedium, );
  }
}

class StyledHeadlineSmallText extends StatelessWidget {
  final String text;

  const StyledHeadlineSmallText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineSmall);
  }
}

class StyledTitleLargeText extends StatelessWidget {
  final String text;

  const StyledTitleLargeText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text.toUpperCase(), style: Theme.of(context).textTheme.titleLarge);
  }
}

class StyledTitleSmallText extends StatelessWidget {
  final String text;

  const StyledTitleSmallText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.titleSmall);
  }
}
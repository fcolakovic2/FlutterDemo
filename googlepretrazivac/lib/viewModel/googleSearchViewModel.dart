import 'package:flutter/material.dart';
import 'package:googlepretrazivac/services/googleSearchService.dart';

launchGoogle(BuildContext context, String kontrolerovTekst) {
  return GoogleSearchService().launchGoogle(context, kontrolerovTekst);
}

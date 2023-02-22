import 'package:flutter/material.dart';
import 'package:mac_scanner/core/config/extensions.dart';
import 'package:mac_scanner/view/style/fonts.dart';

class CardLatestLookup extends StatelessWidget {
  const CardLatestLookup({
    String? searchTerm,
    String? virtualMachine,
    String? transmissionType,
    super.key,
  })  : _searchTerm = searchTerm,
        _virtualMachine = virtualMachine,
        _transmissionType = transmissionType;

  final String? _searchTerm;
  final String? _virtualMachine;
  final String? _transmissionType;

  @override
  Widget build(BuildContext context) => SizedBox(
        child: Card(
          elevation: 0,
          margin: EdgeInsets.zero,
          shadowColor: Colors.transparent,
          child: Column(
            children: [
              row(
                context,
                context.colors.secondary,
                title(context),
              ),
              row(
                context,
                context.colors.onSecondary,
                searchTerm(context),
              ),
              row(
                context,
                context.colors.secondary,
                virtualMachineDetails(context),
              ),
            ],
          ),
        ),
      );

  Widget title(BuildContext context) => Row(
        children: [
          Icon(
            Icons.manage_search_outlined,
            color: context.colors.primary,
            size: 40,
            weight: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Latest lookup",
            style: context.title,
          ),
        ],
      );

  Widget searchTerm(BuildContext context) => Row(
        children: [
          Icon(
            Icons.devices_other_outlined,
            color: context.colors.primary,
            size: 40,
            weight: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              _searchTerm ?? "FF:FF:FF:FF:FF:FF",
              style: context.titleBold,
            ),
          ),
        ],
      );

  Widget virtualMachineDetails(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                _virtualMachine ?? "Unknown status",
                style: context.subtitle,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                _transmissionType ?? "Unknown status",
                style: context.subtitle,
              ),
            ],
          ),
        ],
      );

  Widget row(BuildContext context, Color color, Widget child) => Container(
        color: color,
        padding: const EdgeInsets.all(10),
        child: child,
      );
}

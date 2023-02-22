import 'package:flutter/material.dart';
import 'package:mac_scanner/core/config/extensions.dart';

class ModalSheet {
  ModalSheet.openModal(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(hintText: "FF:FF:FF:FF:FF:FF"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.search),
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.colors.primary,
                ),
              )
            ],
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.35,
        decoration: BoxDecoration(
          color: context.colors.onPrimary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialBanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final materialbanner = MaterialBanner(
                  content: Text('User saved successfully'),
                  backgroundColor: Colors.amber,
                  forceActionsBelow: true,
                  actions: [
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                      child: Text('Cancel'),
                    ),
                  ],
                );
                ScaffoldMessenger.of(context)
                    .showMaterialBanner(materialbanner);

                Future.delayed(Duration(seconds: 2), () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                });
              },
              child: Text('Simple Material Banner'),
            ),            
          ],
        ),
      ),
    );
  }
}

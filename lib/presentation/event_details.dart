import 'package:evently_c13_offline/core/colors_manager.dart';
import 'package:flutter/material.dart';

import '../core/assets_manager.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: ColorsManager.primary,
            )),
        title: Row(
          children: [
            SizedBox(
              width: 45,
            ),
            Text(
              'Event Details',
              style: TextStyle(color: ColorsManager.primary),
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: ColorsManager.primary,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete_outline,
                  color: ColorsManager.red,
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: double.infinity,
                  height: 203,
                  decoration: BoxDecoration(
                    color: ColorsManager.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(AssetsManager.football)),
              SizedBox(
                height: 16,
              ),
              Text(
                'We Are Going To Play Football',
                style: TextStyle(
                  color: ColorsManager.primary,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), border: Border.all(width: 2, color: ColorsManager.primary)),
                child: ListTile(
                  leading: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: ColorsManager.primary),
                      child: Icon(
                        Icons.calendar_month_outlined,
                        color: ColorsManager.white,
                      )),
                  title: Text(
                    'Date',
                    style: TextStyle(
                      color: ColorsManager.primary,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    'time',
                    style: TextStyle(
                      color: ColorsManager.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), border: Border.all(width: 2, color: ColorsManager.primary)),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: ColorsManager.primary),
                        child: Icon(
                          Icons.location_searching,
                          color: ColorsManager.white,
                        )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Text(
                      "Choose Event Location",
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: ColorsManager.primary,
                      size: 24,
                    )
                  ],
                ), // MaterialButton(
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                color: ColorsManager.primary,
                width: 375,
                height: 361,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Description',
                style: TextStyle(color: ColorsManager.black, fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Lorem ipsum dolor sit amet consectetur. Vulputate eleifend suscipit eget neque senectus a. Nulla at non malesuada odio duis lectus amet nisi sit. Risus hac enim maecenas auctor et. At cras massa diam porta facilisi lacus purus. Iaculis eget quis ut amet. Sit ac malesuada nisi quis  feugiat.',
                style: TextStyle(color: ColorsManager.black, fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

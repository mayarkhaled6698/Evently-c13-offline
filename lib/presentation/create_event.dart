import 'package:evently_c13_offline/core/assets_manager.dart';
import 'package:evently_c13_offline/core/colors_manager.dart';
import 'package:evently_c13_offline/core/widgets/custom_elvated_button.dart';
import 'package:evently_c13_offline/core/widgets/custom_text_form_field.dart';
import 'package:evently_c13_offline/model/category_DM.dart';
import 'package:evently_c13_offline/presentation/main_layout/home/widget/tab_widget.dart';
import 'package:flutter/material.dart';

class CreateEvent extends StatefulWidget {
  CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Event"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  width: double.infinity,
                  height: 203,
                  decoration: BoxDecoration(
                    color: ColorsManager.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(AssetsManager.football)),
              const SizedBox(
                height: 8,
              ),
              DefaultTabController(
                length: CategoryDM.categories.length,
                child: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.transparent,
                    dividerColor: Colors.transparent,
                    tabAlignment: TabAlignment.start,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 6),
                    onTap: (index) {
                      selectedIndex = index;
                      setState(() {});
                    },
                    tabs: CategoryDM.categories
                        .map(
                          (category) => TabWidget(
                              selectedContentColor: ColorsManager.white,
                              unSelectedContentColor: ColorsManager.primary,
                              selectedBgColor: ColorsManager.primary,
                              unSelectedBgColor: Colors.transparent,
                              categoryDM: category,
                              isSelected: CategoryDM.categories.indexOf(category) == selectedIndex),
                        )
                        .toList()),
              ),
              Text(
                "Title",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormField(hintText: "Event title", prefixIcon: const Icon(Icons.edit), controller: TextEditingController()),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Description",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormField(numberOfLines: 4, hintText: "Event description", controller: TextEditingController()),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Icon(Icons.date_range_outlined),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                    "Event Date",
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
                  Text(
                    "Choose Date",
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Icon(Icons.date_range_outlined),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                    "Event Time",
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
                  Text(
                    "Choose Time",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Location",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), border: Border.all(width: 2, color: ColorsManager.primary)),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: ColorsManager.primary),
                        child: const Icon(
                          Icons.location_searching,
                          color: ColorsManager.white,
                        )),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Text(
                      "Choose Event Location",
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: ColorsManager.primary,
                      size: 24,
                    )
                  ],
                ), // MaterialButton(
              ),
              const SizedBox(
                height: 16,
              ),
              CustomElevatedButton(padding: const EdgeInsets.symmetric(vertical: 16), onPress: () {}, buttonText: 'Add Event')
            ],
          ),
        ),
      ),
    );
  }
}

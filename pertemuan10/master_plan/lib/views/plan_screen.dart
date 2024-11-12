import 'package:flutter/material.dart';
import '../models/data_layer.dart'; // Pastikan path model benar
import '../provider/plan_provider.dart';

class PlanScreen extends StatelessWidget {
  final Plan plan;
  const PlanScreen({super.key, required this.plan});

  @override
  Widget build(BuildContext context) {
    // Mendapatkan ValueNotifier<List<Plan>> untuk mendengarkan perubahan list plan
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(plan.name)),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          if (plans.isEmpty) {
            return Center(child: Text('No plans available.'));
          }

          // Mencari plan yang sesuai berdasarkan nama plan
          Plan currentPlan = plans.firstWhere(
            (p) => p.name == plan.name,
            orElse: () => Plan(
                name: 'Plan Not Found',
                tasks: []), // Menghindari kesalahan jika plan tidak ditemukan
          );

          return Column(
            children: [
              Expanded(
                  child: _buildList(currentPlan)), // Menampilkan daftar task
              SafeArea(
                  child: Text(currentPlan
                      .completenessMessage)), // Menampilkan pesan kesempurnaan
            ],
          );
        },
      ),
      floatingActionButton:
          _buildAddTaskButton(context), // Tombol untuk menambah task
    );
  }

  Widget _buildList(Plan plan) {
    // Pastikan bahwa tasks tidak kosong sebelum menampilkan
    if (plan.tasks.isEmpty) {
      return Center(child: Text('No tasks available.'));
    }

    return ListView.builder(
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan.tasks[index], index, context),
    );
  }

  // Menambahkan task baru ke dalam plan
  Widget _buildAddTaskButton(BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        Plan currentPlan = plan;
        // Mencari index plan yang sesuai
        int planIndex =
            planNotifier.value.indexWhere((p) => p.name == currentPlan.name);

        if (planIndex == -1) {
          return; // Jika plan tidak ditemukan, tidak lakukan apapun
        }

        List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)
          ..add(Task(description: 'New Task', complete: false)); // Tambah task baru dengan deskripsi default
        planNotifier.value = List<Plan>.from(planNotifier.value)
          ..[planIndex] = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );
      },
    );
  }

  // Membuat tile untuk menampilkan dan mengedit task
  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          Plan currentPlan = plan;
          // Menemukan index plan yang sesuai dan memperbarui status task
          int planIndex =
              planNotifier.value.indexWhere((p) => p.name == currentPlan.name);

          if (planIndex == -1 || index >= currentPlan.tasks.length) {
            return; // Jika plan atau task tidak ditemukan, tidak lakukan apapun
          }

          // Memperbarui status checkbox untuk task yang dipilih
          List<Task> updatedTasks = List<Task>.from(currentPlan.tasks);
          updatedTasks[index] = Task(
            description: task.description,
            complete: selected ?? false,
          );

          // Memperbarui task dalam plan
          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[planIndex] = Plan(
              name: currentPlan.name,
              tasks: updatedTasks,
            );
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          Plan currentPlan = plan;
          // Menemukan index plan yang sesuai dan memperbarui deskripsi task
          int planIndex =
              planNotifier.value.indexWhere((p) => p.name == currentPlan.name);

          if (planIndex == -1 || index >= currentPlan.tasks.length) {
            return; // Jika plan atau task tidak ditemukan, tidak lakukan apapun
          }

          // Memperbarui deskripsi task
          List<Task> updatedTasks = List<Task>.from(currentPlan.tasks);
          updatedTasks[index] = Task(
            description: text,
            complete: task.complete,
          );

          // Memperbarui task dalam plan
          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[planIndex] = Plan(
              name: currentPlan.name,
              tasks: updatedTasks,
            );
        },
      ),
    );
  }
}

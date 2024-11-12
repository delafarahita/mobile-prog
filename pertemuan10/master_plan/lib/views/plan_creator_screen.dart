import 'package:flutter/material.dart';
import '../models/data_layer.dart';
import '../provider/plan_provider.dart';
import 'plan_screen.dart';

class PlanCreatorScreen extends StatefulWidget {
  const PlanCreatorScreen({super.key});

  @override
  _PlanCreatorScreenState createState() => _PlanCreatorScreenState();
}

class _PlanCreatorScreenState extends State<PlanCreatorScreen> {
  // Langkah 10: Deklarasi TextEditingController untuk inputan plan baru
  final textController = TextEditingController();

  @override
  void dispose() {
    // Langkah 10: Dispose TextEditingController ketika widget unmounted
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Langkah 11: Scaffold dengan AppBar dan layout untuk menambah dan menampilkan plan
    return Scaffold(
      appBar: AppBar(title: const Text('Master Plans Dela')),
      body: Column(
        children: [
          _buildListCreator(), // Menambahkan form untuk menambah plan baru
          Expanded(child: _buildMasterPlans()) // Menampilkan daftar plan yang ada
        ],
      ),
    );
  }

  // Langkah 12: Widget untuk menambahkan plan baru
  Widget _buildListCreator() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Material(
        color: Theme.of(context).cardColor,
        elevation: 10,
        child: TextField(
          controller: textController,
          decoration: const InputDecoration(
            labelText: 'Add a plan',
            contentPadding: EdgeInsets.all(20),
          ),
          onEditingComplete: addPlan, // Menambah plan ketika selesai mengetik
        ),
      ),
    );
  }

  // Langkah 13: Method untuk menambah plan baru
  void addPlan() {
    final text = textController.text;
    if (text.isEmpty) {
      return;
    }
    final plan = Plan(name: text, tasks: []);
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    planNotifier.value = List<Plan>.from(planNotifier.value)..add(plan);
    textController.clear(); // Mengosongkan input field
    FocusScope.of(context).requestFocus(FocusNode()); // Menyembunyikan keyboard
    setState(() {}); // Memperbarui tampilan
  }

  // Langkah 14: Widget untuk menampilkan daftar plan yang ada
  Widget _buildMasterPlans() {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    List<Plan> plans = planNotifier.value;

    if (plans.isEmpty) {
      // Menampilkan pesan jika tidak ada plan
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.note, size: 100, color: Colors.grey),
          Text(
            'Anda belum memiliki rencana apapun.',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      );
    }
    // Menampilkan daftar plan yang sudah ada
    return ListView.builder(
      itemCount: plans.length,
      itemBuilder: (context, index) {
        final plan = plans[index];
        return ListTile(
          title: Text(plan.name),
          subtitle: Text(plan.completenessMessage),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => PlanScreen(plan: plan), // Menavigasi ke PlanScreen
              ),
            );
          },
        );
      },
    );
  }
}

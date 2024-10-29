import 'package:eye/main.dart';

class UserProfile extends UI {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoSection(),
            const SizedBox(height: 24),
            _buildDangerZone(context),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInfoItem('User Name', Icons.person),
        _buildInfoItem('Email', Icons.email),
        _buildInfoItem('Subscription Details', Icons.subscriptions),
      ],
    );
  }

  Widget _buildInfoItem(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 24),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildDangerZone(BuildContext context) {
    return Card(
      color: Colors.red.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Danger Zone',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'THESE ACTIONS ARE IRREVERSIBLE.',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: sessionsBloc.numberOfSessions == 0
                  ? null
                  : () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Confirm Delete'),
                          content: const Text(
                              'Are you sure you want to delete all progress? This action cannot be undone.'),
                          actions: [
                            TextButton(
                              onPressed: () => navigator.back(),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                navigator.back();
                                sessionsBloc.clear();
                              },
                              child: const Text('Delete', style: TextStyle(color: Colors.red)),
                            ),
                          ],
                        ),
                      );
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text('DELETE PROGRESS'),
            ),
          ],
        ),
      ),
    );
  }
}

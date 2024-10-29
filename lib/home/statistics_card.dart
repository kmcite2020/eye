import 'package:eye/main.dart';

class StatisticsCard extends UI {
  const StatisticsCard({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Statistics',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatItem(context, 'Total Sessions', '15'),
                _buildStatItem(context, 'Avg. Duration', '45 min'),
                _buildStatItem(context, 'This Week', '5 sessions'),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: Text('Create New Session'),
              onPressed: () {
                navigator.to(Routes.session());
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(BuildContext context, String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}

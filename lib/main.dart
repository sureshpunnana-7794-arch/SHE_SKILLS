import 'package:flutter/material.dart';

void main() => runApp(const SheSkillsApp());

const Color plum = Color(0xFF6D3B78);
const Color pink = Color(0xFFE96A9B);
const Color ink = Color(0xFF292438);
const Color softPink = Color(0xFFFFF0F5);
const Color pageBg = Color(0xFFFFFAFC);

class SheSkillsApp extends StatelessWidget {
  const SheSkillsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SheSkills',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: pageBg,
        colorScheme: ColorScheme.fromSeed(seedColor: plum, primary: plum),
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: pageBg,
          foregroundColor: ink,
          elevation: 0,
          centerTitle: false,
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}

class Course {
  final String title;
  final String category;
  final String trainer;
  final String duration;
  final String level;
  final String description;
  final IconData icon;
  final Color color;
  final double progress;

  const Course({
    required this.title,
    required this.category,
    required this.trainer,
    required this.duration,
    required this.level,
    required this.description,
    required this.icon,
    required this.color,
    this.progress = 0,
  });
}

const courses = <Course>[
  Course(
    title: 'Professional Tailoring',
    category: 'Tailoring',
    trainer: 'Anita Sharma',
    duration: '6 weeks',
    level: 'Beginner',
    description: 'Learn sewing machine basics, measurements, pattern cutting and garment stitching. Build practical skills to start taking tailoring orders from home.',
    icon: Icons.checkroom_rounded,
    color: Color(0xFFE9A0B9),
    progress: .62,
  ),
  Course(
    title: 'Computer Fundamentals',
    category: 'Computer',
    trainer: 'Meera Reddy',
    duration: '4 weeks',
    level: 'Beginner',
    description: 'Get comfortable with computers, typing, documents, spreadsheets, email and safe internet use for study and work.',
    icon: Icons.computer_rounded,
    color: Color(0xFF9B9BE8),
    progress: .28,
  ),
  Course(
    title: 'Beauty & Wellness',
    category: 'Beauty',
    trainer: 'Farah Khan',
    duration: '5 weeks',
    level: 'Beginner',
    description: 'Explore skin care, hygiene, basic makeup, client consultation and salon best practices through practical lessons.',
    icon: Icons.spa_rounded,
    color: Color(0xFFE9B47E),
  ),
  Course(
    title: 'Digital Marketing Basics',
    category: 'Digital Skills',
    trainer: 'Priya Nair',
    duration: '3 weeks',
    level: 'Intermediate',
    description: 'Learn social media content, audience basics, simple campaign planning and how to promote a small business online.',
    icon: Icons.campaign_rounded,
    color: Color(0xFF80C9B6),
  ),
  Course(
    title: 'Small Business Starter',
    category: 'Business',
    trainer: 'Kavitha Rao',
    duration: '4 weeks',
    level: 'Beginner',
    description: 'Turn an idea into a simple business plan. Understand pricing, customer service, budgeting and first steps to selling.',
    icon: Icons.storefront_rounded,
    color: Color(0xFFEDC36F),
  ),
  Course(
    title: 'Spoken English',
    category: 'Communication',
    trainer: 'Divya Thomas',
    duration: '6 weeks',
    level: 'Beginner',
    description: 'Practise everyday conversations, introductions, workplace vocabulary and speaking with confidence.',
    icon: Icons.record_voice_over_rounded,
    color: Color(0xFF8BB8E8),
  ),
];

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFFFE7F0), Color(0xFFFFFAFC), Color(0xFFF0E8FA)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(26, 22, 26, 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                    child: const Icon(Icons.auto_awesome_rounded, color: pink, size: 27),
                  ),
                  const SizedBox(width: 10),
                  const Text('SheSkills', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: plum)),
                ]),
                const Spacer(),
                Center(
                  child: Container(
                    height: 230,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: .75),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(Icons.school_rounded, size: 112, color: plum),
                    ),
                  ),
                ),
                const SizedBox(height: 38),
                const Text('Learn a skill.\nShape your future.', style: TextStyle(fontSize: 36, height: 1.12, fontWeight: FontWeight.w900, color: ink)),
                const SizedBox(height: 14),
                const Text('A supportive space for women to learn practical skills, grow confidence and create new opportunities.', style: TextStyle(fontSize: 16, height: 1.5, color: Color(0xFF6E6878))),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: FilledButton(
                    style: FilledButton.styleFrom(backgroundColor: plum, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen())),
                    child: const Text('Get started', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 12),
                Center(
                  child: TextButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const PortalShell())),
                    child: const Text('Explore as a guest', style: TextStyle(color: plum, fontWeight: FontWeight.w700)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _register = false;
  bool _hidePassword = true;

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  void _continue() {
    if (_email.text.trim().isEmpty || _password.text.isEmpty || (_register && _name.text.trim().isEmpty)) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please complete the required fields.')));
      return;
    }
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => PortalShell(studentName: _register ? _name.text.trim() : 'Ananya')), (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    final title = _register ? 'Create your account' : 'Welcome back';
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 28),
        children: [
          const Icon(Icons.auto_awesome_rounded, color: pink, size: 42),
          const SizedBox(height: 18),
          Text(title, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: ink)),
          const SizedBox(height: 8),
          Text(_register ? 'Join a community that supports your growth.' : 'Sign in to continue your learning journey.', style: const TextStyle(color: Colors.black54, fontSize: 15)),
          const SizedBox(height: 28),
          if (_register) ...[
            _field(_name, 'Full name', Icons.person_outline_rounded),
            const SizedBox(height: 15),
          ],
          _field(_email, 'Email address', Icons.email_outlined, type: TextInputType.emailAddress),
          const SizedBox(height: 15),
          TextField(
            controller: _password,
            obscureText: _hidePassword,
            decoration: InputDecoration(
              labelText: 'Password',
              prefixIcon: const Icon(Icons.lock_outline_rounded),
              suffixIcon: IconButton(icon: Icon(_hidePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined), onPressed: () => setState(() => _hidePassword = !_hidePassword)),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          if (!_register) Align(alignment: Alignment.centerRight, child: TextButton(onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Connect an authentication service to enable password recovery.'))), child: const Text('Forgot password?'))),
          const SizedBox(height: 18),
          SizedBox(height: 54, child: FilledButton(style: FilledButton.styleFrom(backgroundColor: plum, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))), onPressed: _continue, child: Text(_register ? 'Create account' : 'Sign in', style: const TextStyle(fontWeight: FontWeight.bold)))),
          const SizedBox(height: 14),
          Center(child: TextButton(onPressed: () => setState(() => _register = !_register), child: Text(_register ? 'Already have an account? Sign in' : 'New here? Create an account', style: const TextStyle(color: plum, fontWeight: FontWeight.w700)))),
          const SizedBox(height: 8),
          const Text('Demo frontend: sign-in fields are for UI preview only. Connect Firebase or your backend for real accounts.', textAlign: TextAlign.center, style: TextStyle(color: Colors.black45, fontSize: 12)),
        ],
      ),
    );
  }

  Widget _field(TextEditingController controller, String label, IconData icon, {TextInputType type = TextInputType.text}) {
    return TextField(controller: controller, keyboardType: type, decoration: InputDecoration(labelText: label, prefixIcon: Icon(icon), border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)), filled: true, fillColor: Colors.white));
  }
}

class PortalShell extends StatefulWidget {
  final String studentName;
  const PortalShell({super.key, this.studentName = 'Ananya'});
  @override
  State<PortalShell> createState() => _PortalShellState();
}

class _PortalShellState extends State<PortalShell> {
  int _index = 0;
  final Set<String> _enrolled = {'Professional Tailoring', 'Computer Fundamentals'};

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(studentName: widget.studentName, enrolled: _enrolled, onCourse: _openCourse),
      ExplorePage(enrolled: _enrolled, onCourse: _openCourse),
      LearningPage(enrolled: _enrolled, onCourse: _openCourse),
      const ProfilePage(),
    ];
    return Scaffold(
      body: SafeArea(child: IndexedStack(index: _index, children: pages)),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (value) => setState(() => _index = value),
        backgroundColor: Colors.white,
        indicatorColor: softPink,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home_rounded), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.grid_view_rounded), selectedIcon: Icon(Icons.grid_view_rounded), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.menu_book_outlined), selectedIcon: Icon(Icons.menu_book_rounded), label: 'My learning'),
          NavigationDestination(icon: Icon(Icons.person_outline_rounded), selectedIcon: Icon(Icons.person_rounded), label: 'Profile'),
        ],
      ),
    );
  }

  void _openCourse(Course course) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => CourseDetailPage(course: course, isEnrolled: _enrolled.contains(course.title), onEnroll: () {
      setState(() => _enrolled.add(course.title));
    })));
  }
}

class HomePage extends StatelessWidget {
  final String studentName;
  final Set<String> enrolled;
  final ValueChanged<Course> onCourse;
  const HomePage({super.key, required this.studentName, required this.enrolled, required this.onCourse});

  @override
  Widget build(BuildContext context) {
    final featured = courses.first;
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 26),
      children: [
        Row(children: [
          const CircleAvatar(radius: 23, backgroundColor: softPink, child: Icon(Icons.person_rounded, color: plum)),
          const SizedBox(width: 12),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Good morning,', style: TextStyle(color: Colors.black54, fontSize: 13)),
            Text(studentName, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: ink)),
          ])),
          IconButton(onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('You are all caught up!'))), icon: const Icon(Icons.notifications_none_rounded)),
        ]),
        const SizedBox(height: 22),
        Container(
          padding: const EdgeInsets.all(21),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), gradient: const LinearGradient(colors: [plum, Color(0xFF9A5A9E)], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('YOUR JOURNEY STARTS HERE', style: TextStyle(color: Color(0xFFFFD9E8), fontSize: 10, letterSpacing: 1.4, fontWeight: FontWeight.bold)),
            const SizedBox(height: 9),
            const Text('Small steps.\nBig possibilities.', style: TextStyle(color: Colors.white, fontSize: 25, height: 1.12, fontWeight: FontWeight.w900)),
            const SizedBox(height: 10),
            const Text('Learn at your pace and build skills for your future.', style: TextStyle(color: Colors.white70, height: 1.4)),
            const SizedBox(height: 16),
            FilledButton.tonal(onPressed: () => onCourse(featured), style: FilledButton.styleFrom(backgroundColor: Colors.white, foregroundColor: plum), child: const Text('Continue learning')),
          ]),
        ),
        const SizedBox(height: 23),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text('Your progress', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: ink)),
          Text('${enrolled.length} courses', style: const TextStyle(color: plum, fontWeight: FontWeight.w700)),
        ]),
        const SizedBox(height: 12),
        Row(children: [
          _statCard('Courses joined', '${enrolled.length}', Icons.menu_book_rounded, const Color(0xFFFFE8F0)),
          const SizedBox(width: 10),
          _statCard('Skills gained', '04', Icons.stars_rounded, const Color(0xFFF0EAFE)),
          const SizedBox(width: 10),
          _statCard('Certificates', '01', Icons.workspace_premium_rounded, const Color(0xFFE7F6F0)),
        ]),
        const SizedBox(height: 24),
        const Text('Explore categories', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: ink)),
        const SizedBox(height: 12),
        Wrap(spacing: 9, runSpacing: 9, children: const [
          CategoryChip(label: 'Tailoring', icon: Icons.checkroom_rounded),
          CategoryChip(label: 'Computer', icon: Icons.computer_rounded),
          CategoryChip(label: 'Beauty', icon: Icons.spa_rounded),
          CategoryChip(label: 'Business', icon: Icons.storefront_rounded),
        ]),
        const SizedBox(height: 24),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text('Recommended for you', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: ink)),
          TextButton(onPressed: () => onCourse(courses[2]), child: const Text('View all')),
        ]),
        CourseCard(course: courses[2], onTap: () => onCourse(courses[2])),
      ],
    );
  }

  Widget _statCard(String label, String value, IconData icon, Color color) => Expanded(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 8),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
      child: Column(children: [
        Icon(icon, color: plum, size: 21),
        const SizedBox(height: 7),
        Text(value, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w900, color: ink)),
        Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 10, color: Colors.black54)),
      ]),
    ),
  );
}

class CategoryChip extends StatelessWidget {
  final String label;
  final IconData icon;
  const CategoryChip({super.key, required this.label, required this.icon});
  @override
  Widget build(BuildContext context) => Chip(
    avatar: Icon(icon, color: plum, size: 17),
    label: Text(label),
    backgroundColor: Colors.white,
    side: const BorderSide(color: Color(0xFFF0E2EA)),
    labelStyle: const TextStyle(color: ink, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
  );
}

class ExplorePage extends StatefulWidget {
  final Set<String> enrolled;
  final ValueChanged<Course> onCourse;
  const ExplorePage({super.key, required this.enrolled, required this.onCourse});
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  String query = '';
  String category = 'All';
  final categories = const ['All', 'Tailoring', 'Computer', 'Beauty', 'Digital Skills', 'Business', 'Communication'];

  @override
  Widget build(BuildContext context) {
    final filtered = courses.where((course) {
      final matchesQuery = course.title.toLowerCase().contains(query.toLowerCase()) || course.category.toLowerCase().contains(query.toLowerCase());
      return matchesQuery && (category == 'All' || course.category == category);
    }).toList();
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 24),
      children: [
        const Text('Explore courses', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w900, color: ink)),
        const SizedBox(height: 6),
        const Text('Find the right skill for your next step.', style: TextStyle(color: Colors.black54)),
        const SizedBox(height: 18),
        TextField(
          onChanged: (value) => setState(() => query = value),
          decoration: InputDecoration(hintText: 'Search skills or courses', prefixIcon: const Icon(Icons.search_rounded), filled: true, fillColor: Colors.white, border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none)),
        ),
        const SizedBox(height: 14),
        SizedBox(height: 40, child: ListView(scrollDirection: Axis.horizontal, children: categories.map((item) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: ChoiceChip(label: Text(item), selected: category == item, selectedColor: softPink, onSelected: (_) => setState(() => category = item), labelStyle: TextStyle(color: category == item ? plum : Colors.black54, fontWeight: FontWeight.w600)),
        )).toList())),
        const SizedBox(height: 18),
        Text('${filtered.length} courses available', style: const TextStyle(fontWeight: FontWeight.w700, color: Colors.black54)),
        const SizedBox(height: 10),
        if (filtered.isEmpty) const Padding(padding: EdgeInsets.all(30), child: Center(child: Text('No courses found. Try another search.'))),
        ...filtered.map((course) => Padding(padding: const EdgeInsets.only(bottom: 12), child: CourseCard(course: course, onTap: () => widget.onCourse(course)))),
      ],
    );
  }
}

class CourseCard extends StatelessWidget {
  final Course course;
  final VoidCallback onTap;
  const CourseCard({super.key, required this.course, required this.onTap});
  @override
  Widget build(BuildContext context) => Material(
    color: Colors.white,
    borderRadius: BorderRadius.circular(19),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(19),
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: Row(children: [
          Container(width: 66, height: 72, decoration: BoxDecoration(color: course.color.withValues(alpha: .28), borderRadius: BorderRadius.circular(15)), child: Icon(course.icon, color: plum, size: 31)),
          const SizedBox(width: 13),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(course.category.toUpperCase(), style: const TextStyle(fontSize: 9, letterSpacing: 1, color: pink, fontWeight: FontWeight.w800)),
            const SizedBox(height: 4),
            Text(course.title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: ink)),
            const SizedBox(height: 5),
            Text('${course.duration}  •  ${course.level}', style: const TextStyle(fontSize: 11, color: Colors.black54)),
            const SizedBox(height: 5),
            Text('Trainer: ${course.trainer}', style: const TextStyle(fontSize: 11, color: Colors.black54)),
          ])),
          const Icon(Icons.chevron_right_rounded, color: Colors.black38),
        ]),
      ),
    ),
  );
}

class CourseDetailPage extends StatelessWidget {
  final Course course;
  final bool isEnrolled;
  final VoidCallback onEnroll;
  const CourseDetailPage({super.key, required this.course, required this.isEnrolled, required this.onEnroll});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Course details')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(height: 170, decoration: BoxDecoration(color: course.color.withValues(alpha: .3), borderRadius: BorderRadius.circular(24)), child: Icon(course.icon, size: 82, color: plum)),
          const SizedBox(height: 20),
          Text(course.category.toUpperCase(), style: const TextStyle(color: pink, fontWeight: FontWeight.w900, letterSpacing: 1.2)),
          const SizedBox(height: 7),
          Text(course.title, style: const TextStyle(fontSize: 27, fontWeight: FontWeight.w900, color: ink)),
          const SizedBox(height: 12),
          Row(children: [
            _detailPill(Icons.schedule_rounded, course.duration),
            const SizedBox(width: 8),
            _detailPill(Icons.signal_cellular_alt_rounded, course.level),
          ]),
          const SizedBox(height: 22),
          const Text('About this course', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: ink)),
          const SizedBox(height: 8),
          Text(course.description, style: const TextStyle(height: 1.55, color: Colors.black54)),
          const SizedBox(height: 22),
          const Text('Your trainer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: ink)),
          const SizedBox(height: 10),
          ListTile(
            contentPadding: const EdgeInsets.all(12),
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            leading: const CircleAvatar(backgroundColor: softPink, child: Icon(Icons.person_rounded, color: plum)),
            title: Text(course.trainer, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text('Course instructor'),
            trailing: const Icon(Icons.verified_rounded, color: Color(0xFF54A88A)),
          ),
          const SizedBox(height: 28),
          SizedBox(height: 54, child: FilledButton(
            style: FilledButton.styleFrom(backgroundColor: plum, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
            onPressed: isEnrolled ? null : () {
              onEnroll();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('You are enrolled!')));
              Navigator.pop(context);
            },
            child: Text(isEnrolled ? 'Already enrolled' : 'Enroll in this course', style: const TextStyle(fontWeight: FontWeight.bold)),
          )),
        ],
      ),
    );
  }

  Widget _detailPill(IconData icon, String text) => Container(padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8), decoration: BoxDecoration(color: softPink, borderRadius: BorderRadius.circular(30)), child: Row(children: [Icon(icon, size: 15, color: plum), const SizedBox(width: 5), Text(text, style: const TextStyle(fontSize: 12, color: plum, fontWeight: FontWeight.w700))]));
}

class LearningPage extends StatelessWidget {
  final Set<String> enrolled;
  final ValueChanged<Course> onCourse;
  const LearningPage({super.key, required this.enrolled, required this.onCourse});

  @override
  Widget build(BuildContext context) {
    final myCourses = courses.where((course) => enrolled.contains(course.title)).toList();
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 24),
      children: [
        const Text('My learning', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w900, color: ink)),
        const SizedBox(height: 6),
        const Text('Keep going. Every lesson moves you forward.', style: TextStyle(color: Colors.black54)),
        const SizedBox(height: 22),
        Container(padding: const EdgeInsets.all(18), decoration: BoxDecoration(color: const Color(0xFFF1EAF8), borderRadius: BorderRadius.circular(20)), child: const Row(children: [
          Icon(Icons.emoji_events_rounded, color: plum, size: 36),
          SizedBox(width: 13),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('You are building momentum!', style: TextStyle(fontWeight: FontWeight.w800, color: ink)), SizedBox(height: 4), Text('Complete your lessons to unlock certificates.', style: TextStyle(fontSize: 12, color: Colors.black54))])),
        ])),
        const SizedBox(height: 22),
        Text('Enrolled courses (${myCourses.length})', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: ink)),
        const SizedBox(height: 12),
        if (myCourses.isEmpty) const Text('You have not enrolled in a course yet. Explore courses to get started.'),
        ...myCourses.map((course) => Card(
          color: Colors.white,
          elevation: 0,
          margin: const EdgeInsets.only(bottom: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            onTap: () => onCourse(course),
            child: Padding(padding: const EdgeInsets.all(15), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [Container(padding: const EdgeInsets.all(12), decoration: BoxDecoration(color: course.color.withValues(alpha: .3), borderRadius: BorderRadius.circular(13)), child: Icon(course.icon, color: plum)), const SizedBox(width: 12), Expanded(child: Text(course.title, style: const TextStyle(fontWeight: FontWeight.w800, color: ink))), const Icon(Icons.chevron_right_rounded)]),
              const SizedBox(height: 14),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [const Text('Course progress', style: TextStyle(fontSize: 12, color: Colors.black54)), Text('${(course.progress * 100).round()}%', style: const TextStyle(fontWeight: FontWeight.bold, color: plum))]),
              const SizedBox(height: 8),
              ClipRRect(borderRadius: BorderRadius.circular(20), child: LinearProgressIndicator(value: course.progress, minHeight: 8, backgroundColor: const Color(0xFFF1EAF3), color: pink)),
            ])),
          ),
        )),
        const SizedBox(height: 12),
        const Text('Certificates', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: ink)),
        const SizedBox(height: 10),
        Container(padding: const EdgeInsets.all(15), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)), child: const Row(children: [Icon(Icons.workspace_premium_rounded, color: Color(0xFFD6A33B), size: 30), SizedBox(width: 12), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Your certificates will appear here', style: TextStyle(fontWeight: FontWeight.w700)), Text('Complete a course to earn recognition.', style: TextStyle(fontSize: 12, color: Colors.black54))]))])),
      ],
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 25),
      children: [
        const Text('My profile', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w900, color: ink)),
        const SizedBox(height: 22),
        Container(padding: const EdgeInsets.all(22), decoration: BoxDecoration(gradient: const LinearGradient(colors: [plum, Color(0xFF9A5A9E)]), borderRadius: BorderRadius.circular(22)), child: const Column(children: [
          CircleAvatar(radius: 38, backgroundColor: Colors.white, child: Icon(Icons.person_rounded, color: plum, size: 42)),
          SizedBox(height: 12),
          Text('Ananya Sharma', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900)),
          SizedBox(height: 4),
          Text('Learner account • Hyderabad', style: TextStyle(color: Colors.white70)),
          SizedBox(height: 12),
          Text('“Learning today, leading tomorrow.”', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic)),
        ])),
        const SizedBox(height: 22),
        const Text('Account', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: ink)),
        const SizedBox(height: 8),
        _profileTile(Icons.person_outline_rounded, 'Personal information', 'Update your name and details'),
        _profileTile(Icons.workspace_premium_outlined, 'My certificates', 'View earned certificates'),
        _profileTile(Icons.notifications_none_rounded, 'Notifications', 'Manage learning reminders'),
        _profileTile(Icons.language_rounded, 'Language', 'English'),
        _profileTile(Icons.help_outline_rounded, 'Help & support', 'Get assistance'),
        _profileTile(Icons.privacy_tip_outlined, 'Privacy policy', 'How your information is used'),
        const SizedBox(height: 15),
        OutlinedButton.icon(onPressed: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const WelcomeScreen()), (_) => false), icon: const Icon(Icons.logout_rounded), label: const Text('Sign out'), style: OutlinedButton.styleFrom(foregroundColor: plum, side: const BorderSide(color: plum), padding: const EdgeInsets.all(14))),
        const SizedBox(height: 14),
        const Text('SheSkills • Frontend demo v1.0', textAlign: TextAlign.center, style: TextStyle(fontSize: 11, color: Colors.black38)),
      ],
    );
  }

  Widget _profileTile(IconData icon, String title, String subtitle) => Card(
    elevation: 0,
    color: Colors.white,
    margin: const EdgeInsets.only(bottom: 8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: ListTile(
      leading: Container(padding: const EdgeInsets.all(9), decoration: BoxDecoration(color: softPink, borderRadius: BorderRadius.circular(11)), child: Icon(icon, color: plum)),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
      subtitle: Text(subtitle, style: const TextStyle(fontSize: 11)),
      trailing: const Icon(Icons.chevron_right_rounded, color: Colors.black38),
      onTap: () {},
    ),
  );
}

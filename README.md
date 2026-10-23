# Saad Hmaidi — Portfolio

My personal portfolio website, built with **Flutter Web** and deployed automatically to **GitHub Pages**.

🔗 **Live site:** https://saadhmd44r-sudo.github.io/Portfolio/

## Features

- Hero section with staggered fade-in animations
- Sections that reveal smoothly as you scroll
- Project cards with hover animation and tech tags
- Navigation bar and buttons that smooth-scroll to each section
- Responsive layout for mobile and desktop (`MediaQuery`, `Wrap`)
- Contact links (GitHub, Email, LinkedIn) via `url_launcher`
- CI/CD: every push to `main` builds and deploys with GitHub Actions

## Tech stack

Flutter · Dart · GitHub Actions · GitHub Pages

## Project structure

```
lib/
├── main.dart                  # App, theme, page layout, scroll logic
└── widgets/
    ├── nav_bar.dart           # Top navigation bar
    ├── hero_section.dart      # Name, title, call-to-action buttons
    ├── project_section.dart   # Projects grid
    ├── project_card.dart      # Single project card (hover animation)
    ├── contact_section.dart   # Contact links
    └── reveal_on_scroll.dart  # Reusable fade + slide-in animation
```

## Run locally

```bash
flutter pub get
flutter run -d chrome
```

## Contact

- GitHub: [saadhmd44r-sudo](https://github.com/saadhmd44r-sudo)
- LinkedIn: [saad-hmaidi](https://www.linkedin.com/in/saad-hmaidi/)

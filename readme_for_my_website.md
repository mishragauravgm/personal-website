# Gaurav Mishra - Personal Website

A comprehensive personal/professional website built with Hugo and the PaperMod theme, showcasing my career in machine learning, research publications, and personal interests.

## 🌐 Live Website
- **Local Development**: http://localhost:1314/website/
- **Production**: [Your deployed URL here]

## 📁 Complete File Structure & What Each Does

```
hugo-website/
├── config.yml                    # 🔧 MAIN SITE CONFIGURATION
├── content/                      # 📝 ALL WEBSITE CONTENT
│   ├── experience/              # 💼 WORK EXPERIENCE
│   │   ├── _index.md           # Experience section overview
│   │   ├── data-scientist/     # Merck - Senior ML Engineering
│   │   ├── software-engineer/  # SystemoneX - ML Engineer
│   │   ├── technology-head/    # Northeastern Sanskriti
│   │   ├── motorola/          # Motorola Solutions
│   │   ├── clinical-engineer/ # IIIT Hyderabad
│   │   └── computational-biology/ # IIIT New Delhi
│   ├── research/               # 🔬 RESEARCH & PUBLICATIONS
│   │   ├── _index.md          # Research overview
│   │   └── papers.md          # All 7 papers with citations
│   ├── projects/              # 🚀 PROJECT PORTFOLIO
│   │   ├── ml-project/        # Medical imaging AI
│   │   ├── web-app/           # Protein-ligand prediction
│   │   ├── social-distancing/ # AI social distancing
│   │   ├── llm-rag/          # LLM RAG system
│   │   └── face-recognition/  # Face recognition system
│   ├── skills/                # 🛠️ TECHNICAL SKILLS
│   │   ├── _index.md         # Skills overview
│   │   └── technical-skills.md # Detailed skill breakdown
│   ├── education/             # 🎓 ACADEMIC BACKGROUND
│   │   ├── masters-data-science.md # Northeastern MS ECE
│   │   └── bachelors-computer-science.md # Shiv Nadar BTech
│   ├── personal/              # 🎵 PERSONAL INTERESTS
│   │   ├── _index.md         # Personal section overview
│   │   ├── harmonious-life.md # Music, cats, hiking, cooking
│   │   └── photo-gallery.md   # Photo gallery template (draft)
│   ├── contact/               # 📧 CONTACT INFORMATION
│   │   └── index.md          # Contact details & social links
│   └── data/                  # 📄 RESUME & DOCUMENTS
│       ├── _index.md         # Data section overview
│       ├── data1.md          # Resume summary
│       ├── resume.txt        # Full resume text
│       └── Gaurav_Mishra_resume_h1b.pdf # Resume PDF
├── static/                    # 📸 STATIC FILES (images, docs)
│   ├── cv.pdf                # Resume PDF (publicly accessible)
│   ├── picture.jpeg          # Profile photo
│   ├── apple-touch-icon.png  # Website icons
│   ├── favicon.ico           # Browser favicon
│   └── images/               # 🖼️ PHOTO GALLERIES
│       ├── cats/             # Cat & foster cat photos
│       ├── cooking/          # Culinary creations
│       ├── hikes/            # Outdoor adventures
│       └── README.md         # Image usage guide
├── layouts/                   # 🎨 CUSTOM TEMPLATES
├── themes/PaperMod/          # 🎭 THEME FILES (don't modify)
└── CHANGES.md                # 📋 CHANGELOG OF UPDATES
```

## 🎯 Quick Reference: What to Edit When

### 📝 Adding New Job/Experience
1. **Create new folder**: `content/experience/company-name/`
2. **Add**: `index.md` with job details
3. **Update**: Experience section will auto-populate

### 📚 Adding New Research Paper
1. **Edit**: `content/research/papers.md`
2. **Add**: New paper section with citation and description
3. **Update**: Citation count in research overview

### 🚀 Adding New Project
1. **Create new folder**: `content/projects/project-name/`
2. **Add**: `index.md` with project details
3. **Projects page**: Will auto-populate

### 🖼️ Adding Photos
1. **Upload to**: `static/images/cats/`, `static/images/cooking/`, or `static/images/hikes/`
2. **Reference in content**: `![Alt text](/images/folder/photo.jpg)`
3. **Use photo gallery**: Edit `content/personal/photo-gallery.md` (remove `draft: true`)

### 🔧 Site-Wide Changes
1. **Personal info**: Edit `config.yml`
2. **Menu items**: Edit `config.yml` under `menu`
3. **Social links**: Edit `config.yml` under `params.socialIcons`
4. **Profile description**: Edit `config.yml` under `params.profileMode`

### 📄 Resume Updates
1. **PDF**: Replace `static/cv.pdf`
2. **Text version**: Update `content/data/resume.txt`
3. **Summary**: Update `content/data/data1.md`

## 🚀 Running the Website

### Development Server
```bash
cd hugo-website
hugo server -D --bind 0.0.0.0 --port 1314
```
**Access at**: http://localhost:1314/website/

### Production Build
```bash
hugo --minify
```

### Background Server (keeps running)
```bash
cd hugo-website
hugo server -D --bind 0.0.0.0 --port 1314 &
```

## 🔧 Current Configuration

### Main Sections (in navigation)
- **Experience**: 6 professional roles from Merck to IIIT
- **Research**: 7 publications with 152 citations
- **Projects**: 5 ML/AI projects with technical details
- **Skills**: Technical skills organized by category
- **Education**: MS ECE (Northeastern) + BTech ECE (Shiv Nadar)
- **Personal**: Music, cats, hiking, cooking interests
- **Contact**: Professional contact info + social links

### Key Features Currently Active
- ✅ Professional ML Engineer profile
- ✅ Complete work experience (all 6 roles)
- ✅ Research publications with citations
- ✅ Technical project portfolio
- ✅ Personal interests (music, cats, hiking, cooking)
- ✅ Google Scholar integration
- ✅ Resume download (cv.pdf)
- ✅ Responsive design
- ✅ SEO optimized

## 📊 Content Statistics
- **Experience Entries**: 6 professional roles
- **Research Papers**: 7 publications (152 citations)
- **Projects**: 5 technical projects
- **Skills Categories**: ML, Programming, Cloud, Tools
- **Personal Interests**: 4 main areas (music, cats, hiking, cooking)
- **Photo Gallery Folders**: 3 categories ready for images

## 🎨 Customization Guide

### Adding New Interest/Hobby
1. **Edit**: `content/personal/harmonious-life.md`
2. **Add new section**: Follow existing pattern
3. **Update tags**: In frontmatter
4. **Add photo folder**: `static/images/new-interest/`

### Changing Colors/Theme
1. **Custom CSS**: Add to `assets/css/common/main.css`
2. **Theme vars**: Edit `assets/css/core/theme-vars.css`
3. **Or**: Modify `config.yml` theme parameters

### Adding New Page Section
1. **Create folder**: `content/new-section/`
2. **Add**: `_index.md` and content files
3. **Update menu**: In `config.yml`

## 📈 SEO & Performance

### Current SEO Features
- Meta descriptions for all pages
- Structured data markup
- Social media integration
- Clean URLs
- Fast loading times

### Performance Optimization
- Optimized images (keep under 2MB)
- Minified CSS/JS in production
- Efficient Hugo templating
- CDN-ready static files

## 🔄 Common Updates & Maintenance

### Monthly Updates
- [ ] Update resume PDF if changed
- [ ] Add new projects/publications
- [ ] Update experience if job changes
- [ ] Add new photos to galleries

### As Needed
- [ ] Update contact information
- [ ] Add new skills/technologies
- [ ] Update personal interests
- [ ] Modify social media links

### Content Writing Tips
- Use engaging, story-driven style (not just bullet points)
- Include technical details with real impact
- Balance professional and personal elements
- Keep it authentic and fun, not overly formal

## 🆘 Troubleshooting

### Website Won't Start
```bash
# Check if port is in use
lsof -i :1314

# Kill existing Hugo processes
pkill hugo

# Restart server
hugo server -D --bind 0.0.0.0 --port 1314
```

### Images Not Loading
- Check file paths (case sensitive)
- Ensure images are in `static/` directory
- Use `/images/folder/file.jpg` format
- Check file permissions

### Content Not Updating
- Check `draft: true` in frontmatter
- Restart Hugo server
- Clear browser cache
- Check file syntax (YAML frontmatter)

## 📞 Contact

- **Email**: in.gaurav.mishra@gmail.com
- **LinkedIn**: https://linkedin.com/in/ingauravmishra
- **GitHub**: https://github.com/mishragauravgm
- **Google Scholar**: https://scholar.google.com/citations?user=gdi0oOMAAAAJ
- **Phone**: (857) 264-9813

---

*Last updated: July 2025*
*Website represents authentic professional and personal journey of Gaurav Mishra*
- **GitHub**: https://github.com/gauravmishra

---

*Last updated: July 2025*
*Website represents authentic professional and personal journey of Gaurav Mishra*

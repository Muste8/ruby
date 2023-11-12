
## Table of Contents

- [Blog App](#blog-app)
- [Category Description Rake Task](#category-description-rake-task)
- [CRUD Actions](#crud-actions)
- [Style](#style)

## Blog App

This is a versatile blog app that seamlessly blends content creation and engagement. Explore articles thoughtfully organized into categories, and take charge of your experience by effortlessly managing articles and categories 



## Category Description Rake Task

A Rake task has been added to backfill existing categories with descriptions. Perform this task  to ensure all categories have descriptions.

To run the Rake task, use the following command in the terminal inside your blog directory:

```bash
rake db:add_descriptions
```

## CRUD Actions

### Create (C)

Signed-in users can create a category. The view and form are included as partials for a seamless user experience.

### Read (R)

Users can view a category by navigating to `localhost:3000/categories/:id`. A dedicated view is available for easy category exploration.

### Update (U)

Signed-in users can edit a category. An edit button is provided on the category's show view.

### Delete (D)

Signed-in users can delete a category. A delete button is included on the category's show view.

## Style

The app is styled to be user friendly!

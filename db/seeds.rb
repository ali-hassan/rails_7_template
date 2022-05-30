# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') rescue false if Rails.env.development?
Setting.create([
  {
    title: 'min_monthly_average_revenue',
    value: 8000
  },
  {
    title: 'min_business_period_in_months',
    value: 6
  }  
])

RevenueRange.create([
  {
    title: '5k - 10k',
    kind: 'monthly_revenue',
    sort_order: 1,
  },
  {
    title: '10k - 25k',
    kind: 'monthly_revenue',
    sort_order: 2,
  },
  {
    title: '',
    kind: 'monthly_revenue',
    sort_order: 3,
  },
  {
    title: '25k - 50k',
    kind: 'monthly_revenue',
    sort_order: 4,
  },
  {
    title: '50k - 100k',
    kind: 'monthly_revenue',
    sort_order: 5,
  },
  {
    title: '100K+',
    kind: 'monthly_revenue',
    sort_order: 6,
  },
  {
    title: '100%',
    kind: 'ownership',
    sort_order: 1,
  },
  {
    title: '76% - 99%',
    kind: 'ownership',
    sort_order: 2,
  },  
  {
    title: '51% - 75%',
    kind: 'ownership',
    sort_order: 3,
  },  
  {
    title: '25% - 50%',
    kind: 'ownership',
    sort_order: 4,  
  },
  {
    title: '1% - 24%',
    kind: 'ownership',
    sort_order: 5,  
  },
  {
    title: 'Below 500',
    kind: 'estimated_credit_score',
    sort_order: 1,  
  },
  {
    title: '500 - 600',
    kind: 'estimated_credit_score',
    sort_order: 2,  
  },  
  {
    title: '600 - 700',
    kind: 'estimated_credit_score',
    sort_order: 3,  
  },
  {
    title: '700 - 800',
    kind: 'estimated_credit_score',
    sort_order: 4,  
  },
  {
    title: '800+',
    kind: 'estimated_credit_score',
    sort_order: 5,  
  },
  {
    title: '5k - 10k',
    kind: 'requested_amount',
    sort_order: 1,  
  },
  {
    title: '10k - 30k',
    kind: 'requested_amount',
    sort_order: 2,  
  },
  {
    title: '30k - 50k',
    kind: 'requested_amount',
    sort_order: 3,  
  },
  {
    title: '50k - 100k',
    kind: 'requested_amount',
    sort_order: 4,  
  },
  {
    title: '100k+',
    kind: 'requested_amount',
    sort_order: 5,  
  },
  {
    title: '100%',
    kind: 'credit_card_sales',
    sort_order: 1,  
  },
  {
    title: '76%',
    kind: 'credit_card_sales',
    sort_order: 2,  
  },
  {
    title: '50%',
    kind: 'credit_card_sales',
    sort_order: 3,  
  },
  {
    title: '25%',
    kind: 'credit_card_sales',
    sort_order: 4,  
  },
  {
    title: '0%',
    kind: 'credit_card_sales',
    sort_order: 5,  
  },
])
RevenueRange.create([
  {
    title: '5k - 10k',
    kind: 'balance_amount',
    sort_order: 1,  
  },
  {
    title: '10k - 30k',
    kind: 'balance_amount',
    sort_order: 2,  
  },
  {
    title: '30k - 50k',
    kind: 'balance_amount',
    sort_order: 3,  
  },
  {
    title: '50k - 100k',
    kind: 'balance_amount',
    sort_order: 4,  
  },
  {
    title: '100k+',
    kind: 'balance_amount',
    sort_order: 5,  
  },
])
Purpose.create([
  {
    title: 'Working Capital',
    sort_order: 1,  
  },
  {
    title: 'Expansion',
    sort_order: 2,  
  },
  {
    title: 'Inventory',
    sort_order: 3,  
  },
  {
    title: 'Equipment',
    sort_order: 4,  
  },
  {
    title: 'Cash flow',
    sort_order: 5,  
  },
  {
    title: 'Business Opportunity',
    sort_order: 6,  
  },
  {
    title: 'Account payables',
    sort_order: 7,  
  },
  
  {
    title: 'Debt Consolidation',
    sort_order: 8,  
  },
  
  {
    title: 'Taxes',
    sort_order: 9,  
  }  
])


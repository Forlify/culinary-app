-- auto-generated definition
create table recipes_step
(
    id        serial       not null
        constraint recipes_steps_pkey
            primary key,
    number    integer      not null,
    text      varchar(200) not null,
    recipe_id integer      not null
        constraint recipes_steps_recipe_id_9ff5bf64_fk_recipes_recipe_id
            references recipes_recipe
            deferrable initially deferred
);

create index recipes_steps_recipe_id_9ff5bf64
    on recipes_step (recipe_id);

-- auto-generated definition
create table recipes_recipe
(
    id         serial       not null
        constraint recipes_recipe_pkey
            primary key,
    difficulty integer      not null,
    name       varchar(100) not null,
    image      varchar(200) not null,
    country    varchar(50)  not null,
    made_by    varchar(50)  not null
);

-- auto-generated definition
create table recipes_ingredientinstance_recipe
(
    id                    serial  not null
        constraint recipes_ingredientinstance_recipe_pkey
            primary key,
    ingredientinstance_id integer not null
        constraint recipes_ingredientin_ingredientinstance_i_94c2e77d_fk_recipes_i
            references recipes_ingredientinstance
            deferrable initially deferred,
    recipe_id             integer not null
        constraint recipes_ingredientin_recipe_id_3e92f59a_fk_recipes_r
            references recipes_recipe
            deferrable initially deferred,
    constraint recipes_ingredientinstan_ingredientinstance_id_re_743bbe22_uniq
        unique (ingredientinstance_id, recipe_id)
);

create index recipes_ingredientinstance_ingredientinstance_id_94c2e77d
    on recipes_ingredientinstance_recipe (ingredientinstance_id);

create index recipes_ingredientinstance_recipe_recipe_id_3e92f59a
    on recipes_ingredientinstance_recipe (recipe_id);

-- auto-generated definition
create table recipes_ingredientinstance
(
    id               serial           not null
        constraint recipes_ingredientinstance_pkey
            primary key,
    how_much         double precision not null,
    how_much_of_what varchar(5)       not null,
    ingredient_id    integer          not null
        constraint recipes_ingredientin_ingredient_id_741c8570_fk_recipes_i
            references recipes_ingredient
            deferrable initially deferred
);

create index recipes_ingredientinstance_ingredient_id_741c8570
    on recipes_ingredientinstance (ingredient_id);

-- auto-generated definition
create table recipes_ingredient
(
    id   serial       not null
        constraint recipes_ingredient_pkey
            primary key,
    name varchar(100) not null
);

-- auto-generated definition
create table recipes_category_recipe
(
    id          serial  not null
        constraint recipes_category_recipe_pkey
            primary key,
    category_id integer not null
        constraint recipes_category_rec_category_id_9e343d60_fk_recipes_c
            references recipes_category
            deferrable initially deferred,
    recipe_id   integer not null
        constraint recipes_category_recipe_recipe_id_763777e9_fk_recipes_recipe_id
            references recipes_recipe
            deferrable initially deferred,
    constraint recipes_category_recipe_category_id_recipe_id_b58fbbea_uniq
        unique (category_id, recipe_id)
);

create index recipes_category_recipe_category_id_9e343d60
    on recipes_category_recipe (category_id);

create index recipes_category_recipe_recipe_id_763777e9
    on recipes_category_recipe (recipe_id);

-- auto-generated definition
create table recipes_category
(
    id       serial       not null
        constraint recipes_category_pkey
            primary key,
    category varchar(100) not null
);


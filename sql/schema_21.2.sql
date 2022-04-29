create table if not exists co_art_map
(
    rowid int auto_increment
        primary key,
    id    int          null,
    art   varchar(255) null
)
    charset = utf8mb4;

create index if not exists id
    on co_art_map (id);

create table if not exists co_block
(
    rowid       bigint auto_increment
        primary key,
    time        int        null,
    user        int        null,
    wid         int        null,
    x           int        null,
    y           int        null,
    z           int        null,
    type        int        null,
    data        int        null,
    meta        mediumblob null,
    blockdata   blob       null,
    action      tinyint    null,
    rolled_back tinyint    null
)
    charset = utf8mb4;

create index if not exists type
    on co_block (type, time);

create index if not exists user
    on co_block (user, time);

create index if not exists wid
    on co_block (wid, x, z, time);

create table if not exists co_blockdata_map
(
    rowid int auto_increment
        primary key,
    id    int          null,
    data  varchar(255) null
)
    charset = utf8mb4;

create index if not exists id
    on co_blockdata_map (id);

create table if not exists co_chat
(
    rowid   int auto_increment
        primary key,
    time    int            null,
    user    int            null,
    wid     int            null,
    x       int            null,
    y       int(3)         null,
    z       int            null,
    message varchar(16000) null
)
    charset = utf8mb4;

create index if not exists time
    on co_chat (time);

create index if not exists user
    on co_chat (user, time);

create index if not exists wid
    on co_chat (wid, x, z, time);

create table if not exists co_command
(
    rowid   int auto_increment
        primary key,
    time    int            null,
    user    int            null,
    wid     int            null,
    x       int            null,
    y       int(3)         null,
    z       int            null,
    message varchar(16000) null
)
    charset = utf8mb4;

create index if not exists time
    on co_command (time);

create index if not exists user
    on co_command (user, time);

create index if not exists wid
    on co_command (wid, x, z, time);

create table if not exists co_container
(
    rowid       int auto_increment
        primary key,
    time        int     null,
    user        int     null,
    wid         int     null,
    x           int     null,
    y           int     null,
    z           int     null,
    type        int     null,
    data        int     null,
    amount      int     null,
    metadata    blob    null,
    action      tinyint null,
    rolled_back tinyint null
)
    charset = utf8mb4;

create index if not exists type
    on co_container (type, time);

create index if not exists user
    on co_container (user, time);

create index if not exists wid
    on co_container (wid, x, z, time);

create table if not exists co_database_lock
(
    rowid  int auto_increment
        primary key,
    status tinyint null,
    time   int     null
)
    charset = utf8mb4
    auto_increment = 2;

create table if not exists co_entity
(
    rowid int auto_increment
        primary key,
    time  int  null,
    data  blob null
)
    charset = utf8mb4;

create table if not exists co_entity_map
(
    rowid  int auto_increment
        primary key,
    id     int          null,
    entity varchar(255) null
)
    charset = utf8mb4;

create index if not exists id
    on co_entity_map (id);

create table if not exists co_item
(
    rowid       int auto_increment
        primary key,
    time        int     null,
    user        int     null,
    wid         int     null,
    x           int     null,
    y           int     null,
    z           int     null,
    type        int     null,
    data        blob    null,
    amount      int     null,
    action      tinyint null,
    rolled_back tinyint null
)
    charset = utf8mb4;

create index if not exists type
    on co_item (type, time);

create index if not exists user
    on co_item (user, time);

create index if not exists wid
    on co_item (wid, x, z, time);

create table if not exists co_material_map
(
    rowid    int auto_increment
        primary key,
    id       int          null,
    material varchar(255) null
)
    charset = utf8mb4;

create index if not exists id
    on co_material_map (id);

create table if not exists co_session
(
    rowid  int auto_increment
        primary key,
    time   int     null,
    user   int     null,
    wid    int     null,
    x      int     null,
    y      int(3)  null,
    z      int     null,
    action tinyint null
)
    charset = utf8mb4;

create index if not exists action
    on co_session (action, time);

create index if not exists time
    on co_session (time);

create index if not exists user
    on co_session (user, time);

create index if not exists wid
    on co_session (wid, x, z, time);

create table if not exists co_sign
(
    rowid  int auto_increment
        primary key,
    time   int          null,
    user   int          null,
    wid    int          null,
    x      int          null,
    y      int          null,
    z      int          null,
    action tinyint      null,
    color  int          null,
    data   tinyint      null,
    line_1 varchar(100) null,
    line_2 varchar(100) null,
    line_3 varchar(100) null,
    line_4 varchar(100) null
)
    charset = utf8mb4;

create index if not exists time
    on co_sign (time);

create index if not exists user
    on co_sign (user, time);

create index if not exists wid
    on co_sign (wid, x, z, time);

create table if not exists co_skull
(
    rowid int auto_increment
        primary key,
    time  int         null,
    owner varchar(64) null
)
    charset = utf8mb4;

create table if not exists co_user
(
    rowid int auto_increment
        primary key,
    time  int          null,
    user  varchar(100) null,
    uuid  varchar(64)  null
)
    charset = utf8mb4;

create index if not exists user
    on co_user (user);

create index if not exists uuid
    on co_user (uuid);

create table if not exists co_username_log
(
    rowid int auto_increment
        primary key,
    time  int          null,
    uuid  varchar(64)  null,
    user  varchar(100) null
)
    charset = utf8mb4;

create index if not exists uuid
    on co_username_log (uuid, user);

create table if not exists co_version
(
    rowid   int auto_increment
        primary key,
    time    int         null,
    version varchar(16) null
)
    charset = utf8mb4
    auto_increment = 2;

create table if not exists co_world
(
    rowid int auto_increment
        primary key,
    id    int          null,
    world varchar(255) null
)
    charset = utf8mb4
    auto_increment = 5;

create index if not exists id
    on co_world (id);

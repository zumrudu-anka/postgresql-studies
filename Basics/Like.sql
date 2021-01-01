select * from customer where name like '%e%';

select * from customer where name not like '%e%';


-- ! WildCards ! --

-- *   % = Represents Zero or More Characters                   * --
-- *   _ = Represents A Single Character                        * --
-- *  [] = Represents Any Single Character Within The Brackets  * --
-- *   ^ = Represents Any Character Not in the Brackets         * --
-- *   - = Represents a Range of Characters                     * --

-- ? WildCards | Examples ? --

-- *   % = bl% finds bl, black, blue, and blob                  * --
-- *   _ = h_t finds hot, hat, and hit                          * --
-- *  [] = h[oa]t finds hot and hat, but not hit                * --
-- *   ^ = h[^oa]t finds hit, but not hot and hat               * --
-- *   - = c[a-b]t finds cat and cbt                            * --
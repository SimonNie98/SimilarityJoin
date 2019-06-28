\timing
select count(*) from restaurantphone rp, addressphone ap where levenshtein_distance(rp.phone, ap.phone, 4);
select count(*) from restaurantaddress ra, restaurantphone rp where levenshtein_distance(ra.name, rp.name, 3);
select count(*) from restaurantaddress ra, addressphone ap where levenshtein_distance(ra.address, ap.address, 4);
select count(*) from restaurantphone rp, addressphone ap where jaccard_index(rp.phone, ap.phone) > .6;
select count(*) from restaurantaddress ra, restaurantphone rp where jaccard_index(ra.name, rp.name) > .65;
select count(*) from restaurantaddress ra, addressphone ap where jaccard_index(ra.address, ap.address) > .8;
